.class Lorg/bouncycastle/eac/operator/jcajce/NamedEACHelper;
.super Lorg/bouncycastle/eac/operator/jcajce/EACHelper;
.source "SourceFile"


# instance fields
.field private final providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/eac/operator/jcajce/EACHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/eac/operator/jcajce/NamedEACHelper;->providerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/eac/operator/jcajce/NamedEACHelper;->providerName:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
