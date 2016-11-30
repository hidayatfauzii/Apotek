Public Class FrmPasien

    Private Sub Enable(ByVal xEnable As Boolean)
        With Me
            .TextNama.Enabled = xEnable
            .RadioLaki.Enabled = xEnable
            .RadioPerempuan.Enabled = xEnable
            .TextAlamat.Enabled = xEnable
            .TextTelp.Enabled = xEnable
            .RadioYa.Enabled = xEnable
            .RadioTidak.Enabled = xEnable
            .bt_Baru.Enabled = Not xEnable
            .bt_Simpan.Enabled = xEnable
            .bt_Batal.Enabled = xEnable
        End With
    End Sub

    Private Sub Bersih()
        With Me
            .TextNama.Clear()
            .RadioLaki.Checked = False
            .RadioPerempuan.Checked = False
            .TextAlamat.Clear()
            .TextTelp.Clear()
            .RadioYa.Checked = False
            .RadioTidak.Checked = False
        End With
    End Sub

    Private Sub FrmPasien_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ID_Otomatis("id_pasien", "ps", TextID)
        DataPasien(ListView1, ComboCari, TextCari)
        Call Bersih()
        Call Enable(False)
    End Sub

    Private Sub ListView1_MouseClick(sender As Object, e As MouseEventArgs) Handles ListView1.MouseClick
        Try
            With Me
                .TextID.Text = ListView1.SelectedItems(0).SubItems(1).Text
                .TextNama.Text = ListView1.SelectedItems(0).SubItems(2).Text
                If ListView1.SelectedItems(0).SubItems(3).Text = "Laki-Laki" Then
                    .RadioLaki.Checked = True
                    .RadioPerempuan.Checked = False
                ElseIf ListView1.SelectedItems(0).SubItems(3).Text = "Perempuan" Then
                    .RadioLaki.Checked = False
                    .RadioPerempuan.Checked = True
                End If
                .TextAlamat.Text = ListView1.SelectedItems(0).SubItems(4).Text
                .TextTelp.Text = ListView1.SelectedItems(0).SubItems(5).Text
                If ListView1.SelectedItems(0).SubItems(7).Text = "Ya" Then
                    .RadioYa.Checked = True
                    .RadioTidak.Checked = False
                ElseIf ListView1.SelectedItems(0).SubItems(7).Text = "Tidak" Then
                    .RadioYa.Checked = False
                    .RadioTidak.Checked = True
                End If
            End With
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.Critical, "peringatan")
        Finally
            Call Enable(True)
        End Try
    End Sub

    Private Sub bt_Simpan_Click(sender As Object, e As EventArgs) Handles bt_Simpan.Click
        If TextNama.Text = "" Then
            MsgBox("Nama masih kosong !", MsgBoxStyle.Exclamation, "Peringatan")
            TextNama.Focus()
            Exit Sub
        ElseIf RadioLaki.Checked = False And RadioPerempuan.Checked = False Then
            MsgBox("Pilih jenis kelamin !", MsgBoxStyle.Exclamation, "Peringatan")
            Exit Sub
        ElseIf TextAlamat.Text = "" Then
            MsgBox("Alamat masih kosong !", MsgBoxStyle.Exclamation, "Peringatan")
            TextAlamat.Focus()
            Exit Sub
        ElseIf TextTelp.Text = "" Then
            MsgBox("Telepon masih kosong !", MsgBoxStyle.Exclamation, "Peringatan")
            TextTelp.Focus()
            Exit Sub
        ElseIf RadioYa.Checked = False And RadioTidak.Checked = False Then
            MsgBox("Pilih status aktif !", MsgBoxStyle.Exclamation, "Peringatan")
            Exit Sub
        Else
            SimpanPasien(TextID.Text, TextNama.Text, Radio(RadioLaki, RadioPerempuan), TextAlamat.Text, TextTelp.Text, Radio(RadioYa, RadioTidak))
            ID_Otomatis("id_pasien", "ps", TextID)
            DataPegawai(ListView1, ComboCari, TextCari)
            Call Bersih()
            Call Enable(False)
        End If
    End Sub

    Private Sub bt_Baru_Click(sender As Object, e As EventArgs) Handles bt_Baru.Click
        ID_Otomatis("id_pasien", "ps", TextID)
        Call Bersih()
        Call Enable(True)
    End Sub

    Private Sub bt_Batal_Click(sender As Object, e As EventArgs) Handles bt_Batal.Click
        ID_Otomatis("id_pasien", "ps", TextID)
        Call Bersih()
        Call Enable(False)
    End Sub

    Private Sub bt_Tutup_Click(sender As Object, e As EventArgs) Handles bt_Tutup.Click
        Tutup(Me)
    End Sub

    Private Sub bt_Keluar_Click(sender As Object, e As EventArgs) Handles bt_Keluar.Click
        Tutup(Me)
    End Sub

    Private Sub bt_Cari_Click(sender As Object, e As EventArgs) Handles bt_Cari.Click
        DataPasien(ListView1, ComboCari, TextCari)
    End Sub

    Private Sub TextTelp_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextTelp.KeyPress
        TextMobile(e, TextTelp)
    End Sub

    Private Sub ComboCari_KeyPress(sender As Object, e As KeyPressEventArgs) Handles ComboCari.KeyPress
        e.Handled = True
    End Sub

    Private Sub TextCari_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextCari.KeyPress
        If Asc(e.KeyChar) = 13 Then
            DataPasien(ListView1, ComboCari, TextCari)
        End If
    End Sub
End Class