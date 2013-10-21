Imports System.Net.Mail.SmtpClient
Imports System.Net.Mail

Partial Class ContactUs
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim email As String = tbYourEmail.Text
        Dim message As String = tbMessage.Text

        Dim emailTo As String = "test@test.com"
        Dim subject As String = "Contact Page"
        Dim body As String = message


        Dim smtpClient As New SmtpClient
        smtpClient.Host = "Mail Server"
        smtpClient.Port = 587
        smtpClient.UseDefaultCredentials = True


        Dim mailMessage As New MailMessage()
        mailMessage.To.Add(emailTo)
        mailMessage.From = New MailAddress(email)
        mailMessage.Subject = subject
        mailMessage.Body = message


        smtpClient.Send(mailMessage)

    End Sub
End Class
