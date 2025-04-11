.class public Lcom/android/server/companion/securechannel/AttestationVerifier;
.super Ljava/lang/Object;
.source "AttestationVerifier.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$e01RxYQBzVfuD1Kaz4jZ1ayRK2M(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Landroid/security/attestationverification/VerificationToken;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/securechannel/AttestationVerifier;->lambda$verifyAttestation$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Landroid/security/attestationverification/VerificationToken;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/securechannel/AttestationVerifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic lambda$verifyAttestation$0(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Integer;Landroid/security/attestationverification/VerificationToken;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public verifyAttestation([B[B)I
    .locals 8

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "localbinding.challenge"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p2, "android.key_owned_by_system"

    const/4 v0, 0x1

    invoke-virtual {v3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, v7}, Lcom/android/server/companion/securechannel/AttestationVerifier$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    iget-object p0, p0, Lcom/android/server/companion/securechannel/AttestationVerifier;->mContext:Landroid/content/Context;

    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v1, Landroid/security/attestationverification/AttestationProfile;

    const/4 p0, 0x3

    invoke-direct {v1, p0}, Landroid/security/attestationverification/AttestationProfile;-><init>(I)V

    const/4 v2, 0x3

    new-instance v5, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda1;-><init>()V

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/security/attestationverification/AttestationVerificationManager;->verifyAttestation(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;[BLjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V

    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0xa

    invoke-virtual {v7, v0, v1, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string p1, "Attestation verification timed out."

    invoke-direct {p0, p1}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/server/companion/securechannel/SecureChannelException;

    const-string p2, "Attestation verification was interrupted"

    invoke-direct {p1, p2, p0}, Lcom/android/server/companion/securechannel/SecureChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
