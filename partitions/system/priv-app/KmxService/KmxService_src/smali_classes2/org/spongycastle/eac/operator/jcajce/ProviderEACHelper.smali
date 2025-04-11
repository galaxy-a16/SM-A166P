.class Lorg/spongycastle/eac/operator/jcajce/ProviderEACHelper;
.super Lorg/spongycastle/eac/operator/jcajce/EACHelper;
.source "SourceFile"


# instance fields
.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/eac/operator/jcajce/EACHelper;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/eac/operator/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/eac/operator/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method
