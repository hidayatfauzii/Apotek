<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FrmPasien
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(FrmPasien))
        Me.RadioLaki = New System.Windows.Forms.RadioButton()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.TextTelp = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.TextAlamat = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.TextID = New System.Windows.Forms.TextBox()
        Me.TextNama = New System.Windows.Forms.TextBox()
        Me.RadioPerempuan = New System.Windows.Forms.RadioButton()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.bt_Baru = New System.Windows.Forms.Button()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.bt_Tutup = New System.Windows.Forms.Button()
        Me.bt_Batal = New System.Windows.Forms.Button()
        Me.bt_Simpan = New System.Windows.Forms.Button()
        Me.ComboCari = New System.Windows.Forms.ComboBox()
        Me.bt_Cari = New System.Windows.Forms.Button()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.TextCari = New System.Windows.Forms.TextBox()
        Me.ListView1 = New System.Windows.Forms.ListView()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.RadioYa = New System.Windows.Forms.RadioButton()
        Me.RadioTidak = New System.Windows.Forms.RadioButton()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.bt_Keluar = New System.Windows.Forms.ToolStripButton()
        Me.ToolStrip1 = New System.Windows.Forms.ToolStrip()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.Panel2.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.ToolStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'RadioLaki
        '
        Me.RadioLaki.AutoSize = True
        Me.RadioLaki.Location = New System.Drawing.Point(3, 3)
        Me.RadioLaki.Name = "RadioLaki"
        Me.RadioLaki.Size = New System.Drawing.Size(68, 17)
        Me.RadioLaki.TabIndex = 5
        Me.RadioLaki.Text = "Laki-Laki"
        Me.RadioLaki.UseVisualStyleBackColor = True
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(427, 79)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(28, 13)
        Me.Label10.TabIndex = 20
        Me.Label10.Text = "Aktif"
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(427, 41)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(46, 13)
        Me.Label5.TabIndex = 11
        Me.Label5.Text = "Telepon"
        '
        'TextTelp
        '
        Me.TextTelp.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextTelp.Location = New System.Drawing.Point(530, 36)
        Me.TextTelp.Name = "TextTelp"
        Me.TextTelp.Size = New System.Drawing.Size(240, 21)
        Me.TextTelp.TabIndex = 10
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(29, 124)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(39, 13)
        Me.Label4.TabIndex = 9
        Me.Label4.Text = "Alamat"
        '
        'TextAlamat
        '
        Me.TextAlamat.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextAlamat.Location = New System.Drawing.Point(132, 119)
        Me.TextAlamat.Multiline = True
        Me.TextAlamat.Name = "TextAlamat"
        Me.TextAlamat.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.TextAlamat.Size = New System.Drawing.Size(240, 53)
        Me.TextAlamat.TabIndex = 8
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(29, 95)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(71, 13)
        Me.Label3.TabIndex = 7
        Me.Label3.Text = "Jenis Kelamin"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(29, 68)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(35, 13)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Nama"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(29, 41)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(53, 13)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "ID Pasien"
        '
        'TextID
        '
        Me.TextID.Enabled = False
        Me.TextID.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextID.Location = New System.Drawing.Point(132, 36)
        Me.TextID.Name = "TextID"
        Me.TextID.Size = New System.Drawing.Size(240, 21)
        Me.TextID.TabIndex = 1
        '
        'TextNama
        '
        Me.TextNama.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextNama.Location = New System.Drawing.Point(132, 63)
        Me.TextNama.Name = "TextNama"
        Me.TextNama.Size = New System.Drawing.Size(240, 21)
        Me.TextNama.TabIndex = 2
        '
        'RadioPerempuan
        '
        Me.RadioPerempuan.AutoSize = True
        Me.RadioPerempuan.Location = New System.Drawing.Point(77, 3)
        Me.RadioPerempuan.Name = "RadioPerempuan"
        Me.RadioPerempuan.Size = New System.Drawing.Size(79, 17)
        Me.RadioPerempuan.TabIndex = 6
        Me.RadioPerempuan.Text = "Perempuan"
        Me.RadioPerempuan.UseVisualStyleBackColor = True
        '
        'Label14
        '
        Me.Label14.BackColor = System.Drawing.Color.LightSteelBlue
        Me.Label14.Dock = System.Windows.Forms.DockStyle.Top
        Me.Label14.Font = New System.Drawing.Font("Microsoft Sans Serif", 15.75!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label14.Location = New System.Drawing.Point(0, 0)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(869, 50)
        Me.Label14.TabIndex = 16
        Me.Label14.Text = "Data Master Pegawai"
        Me.Label14.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'GroupBox2
        '
        Me.GroupBox2.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox2.Controls.Add(Me.bt_Baru)
        Me.GroupBox2.Controls.Add(Me.bt_Tutup)
        Me.GroupBox2.Controls.Add(Me.bt_Batal)
        Me.GroupBox2.Controls.Add(Me.bt_Simpan)
        Me.GroupBox2.Controls.Add(Me.ComboCari)
        Me.GroupBox2.Controls.Add(Me.bt_Cari)
        Me.GroupBox2.Controls.Add(Me.Label9)
        Me.GroupBox2.Controls.Add(Me.TextCari)
        Me.GroupBox2.Controls.Add(Me.ListView1)
        Me.GroupBox2.Location = New System.Drawing.Point(12, 308)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(830, 279)
        Me.GroupBox2.TabIndex = 15
        Me.GroupBox2.TabStop = False
        '
        'bt_Baru
        '
        Me.bt_Baru.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.bt_Baru.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.bt_Baru.ImageIndex = 0
        Me.bt_Baru.ImageList = Me.ImageList1
        Me.bt_Baru.Location = New System.Drawing.Point(406, 233)
        Me.bt_Baru.Name = "bt_Baru"
        Me.bt_Baru.Size = New System.Drawing.Size(100, 40)
        Me.bt_Baru.TabIndex = 30
        Me.bt_Baru.Text = "Baru"
        Me.bt_Baru.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.bt_Baru.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.bt_Baru.UseVisualStyleBackColor = True
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "add.png")
        Me.ImageList1.Images.SetKeyName(1, "disk.png")
        Me.ImageList1.Images.SetKeyName(2, "cancel.png")
        Me.ImageList1.Images.SetKeyName(3, "cross.png")
        '
        'bt_Tutup
        '
        Me.bt_Tutup.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.bt_Tutup.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.bt_Tutup.ImageIndex = 3
        Me.bt_Tutup.ImageList = Me.ImageList1
        Me.bt_Tutup.Location = New System.Drawing.Point(724, 233)
        Me.bt_Tutup.Name = "bt_Tutup"
        Me.bt_Tutup.Size = New System.Drawing.Size(100, 40)
        Me.bt_Tutup.TabIndex = 29
        Me.bt_Tutup.Text = "Tutup"
        Me.bt_Tutup.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.bt_Tutup.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.bt_Tutup.UseVisualStyleBackColor = True
        '
        'bt_Batal
        '
        Me.bt_Batal.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.bt_Batal.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.bt_Batal.ImageIndex = 2
        Me.bt_Batal.ImageList = Me.ImageList1
        Me.bt_Batal.Location = New System.Drawing.Point(618, 233)
        Me.bt_Batal.Name = "bt_Batal"
        Me.bt_Batal.Size = New System.Drawing.Size(100, 40)
        Me.bt_Batal.TabIndex = 28
        Me.bt_Batal.Text = "Batal"
        Me.bt_Batal.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.bt_Batal.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.bt_Batal.UseVisualStyleBackColor = True
        '
        'bt_Simpan
        '
        Me.bt_Simpan.Anchor = CType((System.Windows.Forms.AnchorStyles.Bottom Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.bt_Simpan.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.bt_Simpan.ImageIndex = 1
        Me.bt_Simpan.ImageList = Me.ImageList1
        Me.bt_Simpan.Location = New System.Drawing.Point(512, 233)
        Me.bt_Simpan.Name = "bt_Simpan"
        Me.bt_Simpan.Size = New System.Drawing.Size(100, 40)
        Me.bt_Simpan.TabIndex = 27
        Me.bt_Simpan.Text = "Simpan"
        Me.bt_Simpan.TextAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.bt_Simpan.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText
        Me.bt_Simpan.UseVisualStyleBackColor = True
        '
        'ComboCari
        '
        Me.ComboCari.Font = New System.Drawing.Font("Microsoft Sans Serif", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ComboCari.FormattingEnabled = True
        Me.ComboCari.Items.AddRange(New Object() {"ID Pasien", "Nama Pasien", "Alamat"})
        Me.ComboCari.Location = New System.Drawing.Point(132, 23)
        Me.ComboCari.Name = "ComboCari"
        Me.ComboCari.Size = New System.Drawing.Size(100, 21)
        Me.ComboCari.TabIndex = 23
        Me.ComboCari.Text = "ID Pasien"
        '
        'bt_Cari
        '
        Me.bt_Cari.Location = New System.Drawing.Point(700, 21)
        Me.bt_Cari.Name = "bt_Cari"
        Me.bt_Cari.Size = New System.Drawing.Size(70, 23)
        Me.bt_Cari.TabIndex = 19
        Me.bt_Cari.Text = "Cari"
        Me.bt_Cari.UseVisualStyleBackColor = True
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(29, 28)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(81, 13)
        Me.Label9.TabIndex = 18
        Me.Label9.Text = "Pencarian Data"
        '
        'TextCari
        '
        Me.TextCari.Font = New System.Drawing.Font("Microsoft Sans Serif", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.TextCari.Location = New System.Drawing.Point(238, 23)
        Me.TextCari.Name = "TextCari"
        Me.TextCari.Size = New System.Drawing.Size(456, 21)
        Me.TextCari.TabIndex = 3
        '
        'ListView1
        '
        Me.ListView1.Anchor = CType((((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Bottom) _
            Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.ListView1.Cursor = System.Windows.Forms.Cursors.Hand
        Me.ListView1.FullRowSelect = True
        Me.ListView1.GridLines = True
        Me.ListView1.Location = New System.Drawing.Point(6, 61)
        Me.ListView1.MultiSelect = False
        Me.ListView1.Name = "ListView1"
        Me.ListView1.ShowItemToolTips = True
        Me.ListView1.Size = New System.Drawing.Size(818, 166)
        Me.ListView1.TabIndex = 0
        Me.ListView1.UseCompatibleStateImageBehavior = False
        Me.ListView1.View = System.Windows.Forms.View.Details
        '
        'GroupBox1
        '
        Me.GroupBox1.Anchor = CType(((System.Windows.Forms.AnchorStyles.Top Or System.Windows.Forms.AnchorStyles.Left) _
            Or System.Windows.Forms.AnchorStyles.Right), System.Windows.Forms.AnchorStyles)
        Me.GroupBox1.Controls.Add(Me.Panel2)
        Me.GroupBox1.Controls.Add(Me.Panel1)
        Me.GroupBox1.Controls.Add(Me.Label10)
        Me.GroupBox1.Controls.Add(Me.Label5)
        Me.GroupBox1.Controls.Add(Me.TextTelp)
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.TextAlamat)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.TextID)
        Me.GroupBox1.Controls.Add(Me.TextNama)
        Me.GroupBox1.Location = New System.Drawing.Point(12, 102)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(830, 200)
        Me.GroupBox1.TabIndex = 14
        Me.GroupBox1.TabStop = False
        '
        'Panel2
        '
        Me.Panel2.Controls.Add(Me.RadioYa)
        Me.Panel2.Controls.Add(Me.RadioTidak)
        Me.Panel2.Location = New System.Drawing.Point(530, 79)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(240, 29)
        Me.Panel2.TabIndex = 24
        '
        'RadioYa
        '
        Me.RadioYa.AutoSize = True
        Me.RadioYa.Location = New System.Drawing.Point(3, 2)
        Me.RadioYa.Name = "RadioYa"
        Me.RadioYa.Size = New System.Drawing.Size(38, 17)
        Me.RadioYa.TabIndex = 18
        Me.RadioYa.Text = "Ya"
        Me.RadioYa.UseVisualStyleBackColor = True
        '
        'RadioTidak
        '
        Me.RadioTidak.AutoSize = True
        Me.RadioTidak.Location = New System.Drawing.Point(47, 2)
        Me.RadioTidak.Name = "RadioTidak"
        Me.RadioTidak.Size = New System.Drawing.Size(52, 17)
        Me.RadioTidak.TabIndex = 19
        Me.RadioTidak.Text = "Tidak"
        Me.RadioTidak.UseVisualStyleBackColor = True
        '
        'Panel1
        '
        Me.Panel1.Controls.Add(Me.RadioLaki)
        Me.Panel1.Controls.Add(Me.RadioPerempuan)
        Me.Panel1.Location = New System.Drawing.Point(132, 90)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(240, 23)
        Me.Panel1.TabIndex = 21
        '
        'bt_Keluar
        '
        Me.bt_Keluar.Alignment = System.Windows.Forms.ToolStripItemAlignment.Right
        Me.bt_Keluar.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.bt_Keluar.Image = CType(resources.GetObject("bt_Keluar.Image"), System.Drawing.Image)
        Me.bt_Keluar.ImageTransparentColor = System.Drawing.Color.Magenta
        Me.bt_Keluar.Name = "bt_Keluar"
        Me.bt_Keluar.Size = New System.Drawing.Size(23, 22)
        Me.bt_Keluar.Text = "Tutup"
        '
        'ToolStrip1
        '
        Me.ToolStrip1.GripStyle = System.Windows.Forms.ToolStripGripStyle.Hidden
        Me.ToolStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.bt_Keluar})
        Me.ToolStrip1.Location = New System.Drawing.Point(0, 50)
        Me.ToolStrip1.Name = "ToolStrip1"
        Me.ToolStrip1.Size = New System.Drawing.Size(869, 25)
        Me.ToolStrip1.TabIndex = 13
        Me.ToolStrip1.Text = "ToolStrip1"
        '
        'FrmPasien
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(869, 610)
        Me.Controls.Add(Me.ToolStrip1)
        Me.Controls.Add(Me.Label14)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "FrmPasien"
        Me.Text = "FrmPasien"
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ToolStrip1.ResumeLayout(False)
        Me.ToolStrip1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents RadioLaki As RadioButton
    Friend WithEvents Label10 As Label
    Friend WithEvents Label5 As Label
    Friend WithEvents TextTelp As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents TextAlamat As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents TextID As TextBox
    Friend WithEvents TextNama As TextBox
    Friend WithEvents RadioPerempuan As RadioButton
    Friend WithEvents Label14 As Label
    Friend WithEvents GroupBox2 As GroupBox
    Friend WithEvents bt_Baru As Button
    Friend WithEvents ImageList1 As ImageList
    Friend WithEvents bt_Tutup As Button
    Friend WithEvents bt_Batal As Button
    Friend WithEvents bt_Simpan As Button
    Friend WithEvents ComboCari As ComboBox
    Friend WithEvents bt_Cari As Button
    Friend WithEvents Label9 As Label
    Friend WithEvents TextCari As TextBox
    Friend WithEvents ListView1 As ListView
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents Panel2 As Panel
    Friend WithEvents RadioYa As RadioButton
    Friend WithEvents RadioTidak As RadioButton
    Friend WithEvents Panel1 As Panel
    Friend WithEvents bt_Keluar As ToolStripButton
    Friend WithEvents ToolStrip1 As ToolStrip
End Class
