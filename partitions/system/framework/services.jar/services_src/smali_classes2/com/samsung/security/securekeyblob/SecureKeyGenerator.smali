.class public Lcom/samsung/security/securekeyblob/SecureKeyGenerator;
.super Ljava/lang/Object;
.source "SecureKeyGenerator.java"


# instance fields
.field public final mKeyStore:Landroid/security/KeyStore2;

.field public mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mSamsungSecurekeyGeneratorBinder:Landroid/security/securekeygeneration/ISecureKeyGeneration;

    .line 94
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/security/securekeyblob/SecureKeyGenerator;->mKeyStore:Landroid/security/KeyStore2;

    return-void
.end method


# virtual methods
.method public isSupportSecureKeyService(Landroid/content/Context;)Z
    .locals 0

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo p1, "samsung.software.secure_key_service"

    .line 179
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
