.class public Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "FileIntegrityService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/security/FileIntegrityService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/FileIntegrityService;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/security/FileIntegrityService;Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;-><init>(Lcom/android/server/security/FileIntegrityService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4

    .line 249
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 253
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 255
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "append-cert"

    .line 256
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const-string/jumbo v2, "remove-last-cert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Unknown action"

    .line 291
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 292
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->onHelp()V

    return v1

    .line 281
    :cond_2
    iget-object p1, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {p1}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$fgetmTrustedCertificates(Lcom/android/server/security/FileIntegrityService;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {v2}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$fgetmTrustedCertificates(Lcom/android/server/security/FileIntegrityService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "Certificate list is already empty"

    .line 283
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    monitor-exit p1

    return v1

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {v1}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$fgetmTrustedCertificates(Lcom/android/server/security/FileIntegrityService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-static {p0}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$fgetmTrustedCertificates(Lcom/android/server/security/FileIntegrityService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 287
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Certificate is removed successfully"

    .line 288
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :catchall_0
    move-exception p0

    .line 287
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 258
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "Invalid argument"

    .line 260
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, ""

    .line 261
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->onHelp()V

    return v1

    :cond_5
    const-string/jumbo v2, "r"

    .line 265
    invoke-virtual {p0, p1, v2}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-nez p1, :cond_6

    const-string p0, "Cannot open the file"

    .line 267
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 270
    :cond_6
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 272
    :try_start_2
    iget-object p0, p0, Lcom/android/server/security/FileIntegrityService$FileIntegrityServiceShellCommand;->this$0:Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v2}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/security/FileIntegrityService;->-$$Nest$mcollectCertificate(Lcom/android/server/security/FileIntegrityService;[B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "Certificate is added successfully"

    .line 277
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception p0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add certificate: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onHelp()V
    .locals 1

    .line 300
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "File integrity service commands:"

    .line 301
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 302
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 303
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  append-cert path/to/cert.der"

    .line 304
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add the DER-encoded certificate (only in debug builds)"

    .line 305
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove-last-cert"

    .line 306
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Remove the last certificate in the key list (only in debug builds)"

    .line 307
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 308
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
