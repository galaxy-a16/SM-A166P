.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;
.super Ljava/lang/Object;
.source "SemFpCallbackCenter.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpHalCallbackEx;
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mAuthenticationListeners:Ljava/util/List;

.field public final mChallengeListeners:Ljava/util/List;

.field public final mEnrollListeners:Ljava/util/List;

.field public final mEventListeners:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public static synthetic $r8$lambda$FiJp-fl6DxVBBB7oHkxz8j3kSi0(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->lambda$addChallengeListener$1(Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P_y1NileNUqjH0mXpDEC0lXDmbA(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->lambda$removeEventListener$8(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U_ORpdKvjBLw12zFhIBcfR2WasA(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;IIJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->lambda$dispatchChallengeListener$0(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$s5jrtNUUi3DGper-JTZp77dhE8c(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->lambda$addEnrollListener$5(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yMugZmC-X5ZcrZCEnwVgIGmh9Kw(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->lambda$addEventListener$7(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhbQoi_nA3sCtw3fbuYrpY5P1wI(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->lambda$addAuthenticationListener$3(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Landroid/os/Handler;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mChallengeListeners:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEventListeners:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 36
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$addAuthenticationListener$3(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$addChallengeListener$1(Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mChallengeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mChallengeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$addEnrollListener$5(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$addEventListener$7(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$dispatchChallengeListener$0(IIJ)V
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    const-string v4, "EnrollSession"

    move v1, p1

    move v2, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$removeEventListener$8(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 211
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEventListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addAuthenticationListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addChallengeListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addEnrollListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dispatchChallengeListener(IIJZ)V
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mChallengeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;

    if-eqz p5, :cond_0

    .line 110
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda1;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;IIJ)V

    invoke-interface {v1, p1, p3, p4, v8}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;->onChallengeGenerated(IJLjava/lang/Runnable;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpChallengeListener;->onChallengeRevoked(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAcquire(IIIII)V
    .locals 1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 73
    invoke-interface {p3, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationAcquire(IIII)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 76
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 77
    invoke-interface {p3, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollAcquire(IIII)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onAuthenticated(III)V
    .locals 1

    .line 91
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 92
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationResult(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->dispatchChallengeListener(IIJZ)V

    return-void
.end method

.method public onChallengeRevoked(IIJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->dispatchChallengeListener(IIJZ)V

    return-void
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    .line 136
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz p2, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 138
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    .line 139
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 138
    invoke-interface {p2, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationFinished(II)V

    goto :goto_0

    .line 141
    :cond_0
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz p2, :cond_1

    .line 142
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 143
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 143
    invoke-interface {p2, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollFinished(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 3

    .line 121
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 123
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    .line 124
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationStarted(II)V

    goto :goto_0

    .line 126
    :cond_0
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 128
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    .line 129
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    .line 128
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollStarted(II)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onEnrolled(II)V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 85
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollFinished(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(IIIII)V
    .locals 1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 56
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mAuthenticationListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 57
    invoke-interface {v0, p1, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationError(III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 60
    iget-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEnrollListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 61
    invoke-interface {v0, p1, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollError(III)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;

    .line 65
    invoke-interface {p3, p1, p2, p4, p5}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;->onError(IIII)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public onGestureEvent(II)V
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;

    .line 49
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;->onGestureEvent(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSpenEvent(II)V
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mEventListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;

    .line 42
    invoke-interface {v0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;->onSpenEvent(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeEventListener(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackCenter;Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
