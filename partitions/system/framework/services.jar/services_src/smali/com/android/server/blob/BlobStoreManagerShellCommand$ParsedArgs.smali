.class public Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;
.super Ljava/lang/Object;
.source "BlobStoreManagerShellCommand.java"


# instance fields
.field public algorithm:Ljava/lang/String;

.field public blobId:J

.field public digest:[B

.field public expiryTimeMillis:J

.field public label:Ljava/lang/CharSequence;

.field public tag:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 179
    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    const-string v0, "SHA-256"

    .line 181
    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlobHandle()Landroid/app/blob/BlobHandle;
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->digest:[B

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->label:Ljava/lang/CharSequence;

    iget-wide v3, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->expiryTimeMillis:J

    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->tag:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/app/blob/BlobHandle;->create(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object p0

    return-object p0
.end method
