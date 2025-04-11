.class Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignatureOutputStream"
.end annotation


# instance fields
.field private sig:Ljava/security/Signature;

.field final synthetic this$0:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;Ljava/security/Signature;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->this$0:Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public getSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0
.end method

.method public write(I)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/operator/OperatorStreamException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception in content signer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1
    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/operator/OperatorStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write([B)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/operator/OperatorStreamException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception in content signer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {p0, v0}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/operator/OperatorStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write([BII)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/eac/operator/jcajce/JcaEACSignerBuilder$SignatureOutputStream;->sig:Ljava/security/Signature;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/operator/OperatorStreamException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "exception in content signer: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p2}, Lorg/bouncycastle/cert/a;->g(Ljava/security/SignatureException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/operator/OperatorStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
