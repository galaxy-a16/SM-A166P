.class Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;->privilegedRead([BII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;

.field final synthetic val$data:[B

.field final synthetic val$len:I

.field final synthetic val$off:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;[BII)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->val$data:[B

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->val$off:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;->access$300(Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->val$data:[B

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->val$off:I

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->val$len:I

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    const-string v0, "unable to read random source"

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$URLSeededSecureRandom$2;->run()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
