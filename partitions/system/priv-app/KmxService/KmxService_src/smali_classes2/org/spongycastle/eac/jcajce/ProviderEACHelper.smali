.class Lorg/spongycastle/eac/jcajce/ProviderEACHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/eac/jcajce/EACHelper;


# instance fields
.field private final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/eac/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/eac/jcajce/ProviderEACHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method
