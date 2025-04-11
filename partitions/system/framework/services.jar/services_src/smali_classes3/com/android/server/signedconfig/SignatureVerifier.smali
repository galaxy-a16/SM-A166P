.class public Lcom/android/server/signedconfig/SignatureVerifier;
.super Ljava/lang/Object;
.source "SignatureVerifier.java"


# instance fields
.field public final mDebugKey:Ljava/security/PublicKey;

.field public final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field public final mProdKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 57
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmJKs4lSn+XRhMQmMid+Zbhbu13YrU1haIhVC5296InRu1x7A8PV1ejQyisBODGgRY6pqkAHRncBCYcgg5wIIJg=="

    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE+lky6wKyGL6lE1VrD0YTMHwb0Xwc+tzC8MvnrzVxodvTpVY/jV7V+Zktcx+pry43XPABFRXtbhTo+qykhyBA1g=="

    .line 58
    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    return-void
.end method

.method public static createKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    const-string v0, "SignedConfig"

    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 65
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "EC"

    .line 71
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 72
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v2, "Failed to construct public key"

    .line 74
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception p0

    const-string v2, "Failed to base64 decode public key"

    .line 67
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SignedConfig"

    const/4 v1, 0x0

    .line 98
    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 108
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "Verified config using debug key"

    .line 112
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    iput v3, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    return v3

    :cond_0
    const-string v2, "Debuggable build, but have no debug key"

    .line 120
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    if-nez v2, :cond_2

    const-string p1, "No prod key; construction failed?"

    .line 124
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/16 p1, 0x9

    iput p1, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return v1

    .line 130
    :cond_2
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Verified config using production key"

    .line 131
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    return v3

    .line 137
    :cond_3
    iget-object p0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p1, 0x7

    iput p1, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    return v1

    .line 100
    :catch_0
    iget-object p0, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    const-string p0, "Failed to base64 decode signature"

    .line 102
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z
    .locals 0

    const-string p0, "SHA256withECDSA"

    .line 81
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    .line 82
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 83
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 84
    invoke-virtual {p0, p3}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method
