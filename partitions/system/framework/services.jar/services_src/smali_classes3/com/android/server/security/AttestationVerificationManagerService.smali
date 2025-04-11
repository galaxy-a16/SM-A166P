.class public Lcom/android/server/security/AttestationVerificationManagerService;
.super Lcom/android/server/SystemService;
.source "AttestationVerificationManagerService.java"


# instance fields
.field public final mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$mverifyAttestationForAllVerifiers(Lcom/android/server/security/AttestationVerificationManagerService;Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/security/AttestationVerificationManagerService;->verifyAttestationForAllVerifiers(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/android/server/security/AttestationVerificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/security/AttestationVerificationManagerService$1;-><init>(Lcom/android/server/security/AttestationVerificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Landroid/os/IBinder;

    .line 53
    new-instance v0, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-direct {v0, p1}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    const-string v0, "AVF"

    const-string v1, "Started"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "attestation_verification"

    .line 120
    iget-object v1, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final verifyAttestationForAllVerifiers(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLcom/android/internal/infra/AndroidFuture;)V
    .locals 3

    .line 91
    new-instance v0, Landroid/security/attestationverification/IVerificationResult;

    invoke-direct {v0}, Landroid/security/attestationverification/IVerificationResult;-><init>()V

    const/4 v1, 0x0

    .line 93
    iput-object v1, v0, Landroid/security/attestationverification/IVerificationResult;->token:Landroid/security/attestationverification/VerificationToken;

    .line 94
    invoke-virtual {p1}, Landroid/security/attestationverification/AttestationProfile;->getAttestationProfileId()I

    move-result p1

    const/4 v1, 0x2

    const-string v2, "AVF"

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p0, "No profile found, defaulting."

    .line 111
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 112
    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    goto :goto_0

    :cond_0
    const-string p1, "Verifying Peer Device profile."

    .line 106
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/android/server/security/AttestationVerificationManagerService;->mPeerDeviceVerifier:Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/security/AttestationVerificationPeerDeviceVerifier;->verifyAttestation(ILandroid/os/Bundle;[B)I

    move-result p0

    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    goto :goto_0

    :cond_1
    const-string p0, "Verifying Self Trusted profile."

    .line 96
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :try_start_0
    invoke-static {}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->getInstance()Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;

    move-result-object p0

    .line 100
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/security/AttestationVerificationSelfTrustedVerifierForTesting;->verifyAttestation(ILandroid/os/Bundle;[B)I

    move-result p0

    iput p0, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    iput v1, v0, Landroid/security/attestationverification/IVerificationResult;->resultCode:I

    .line 114
    :goto_0
    invoke-virtual {p5, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
