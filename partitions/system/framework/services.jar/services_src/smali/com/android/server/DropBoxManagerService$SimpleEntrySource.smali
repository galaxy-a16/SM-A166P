.class public Lcom/android/server/DropBoxManagerService$SimpleEntrySource;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Lcom/android/server/DropBoxManagerInternal$EntrySource;


# instance fields
.field public final forceCompress:Z

.field public final in:Ljava/io/InputStream;

.field public final length:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JZ)V
    .locals 0

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    .line 462
    iput-wide p2, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    .line 463
    iput-boolean p4, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    invoke-static {p0}, Landroid/os/FileUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public length()J
    .locals 2

    .line 467
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->length:J

    return-wide v0
.end method

.method public writeTo(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 475
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->forceCompress:Z

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 478
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 479
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    goto :goto_0

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;->in:Ljava/io/InputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {p0, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    :goto_0
    return-void
.end method
