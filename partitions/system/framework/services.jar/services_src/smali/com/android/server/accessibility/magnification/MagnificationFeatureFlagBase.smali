.class public abstract Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;
.super Ljava/lang/Object;
.source "MagnificationFeatureFlagBase.java"


# direct methods
.method public static synthetic $r8$lambda$2B8i4jKAqiMsdTP4Q1FsxJB3ZuI(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$clearCallingIdentifyAndTryCatch$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HNgZk9KSZ---19zo76WkXpNayug()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$addOnChangedListener$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$KdhzH_YqbpNJGyYwZmVxkW7GIPA(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$addOnChangedListener$6(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4XP2pADFey8Kb8ED10UvgpNM9g(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$setFeatureFlagEnabled$4(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RGMKQb-vltf09QCk989GHQ5HcAQ(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$addOnChangedListener$5(Ljava/lang/Runnable;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_E3XubHPWed3lShgOc4O2W5UCGw(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->lambda$setFeatureFlagEnabled$3(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$addOnChangedListener$5(Ljava/lang/Runnable;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 96
    invoke-virtual {p2}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p2

    .line 97
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    .line 96
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addOnChangedListener$6(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object p0

    .line 103
    invoke-static {p0, p1, p2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static synthetic lambda$addOnChangedListener$7()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic lambda$clearCallingIdentifyAndTryCatch$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 43
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$setFeatureFlagEnabled$3(Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getFeatureName()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, p0, p2, v1}, Landroid/provider/DeviceConfig;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private synthetic lambda$setFeatureFlagEnabled$4(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getDefaultValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public addOnChangedListener(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .locals 1

    .line 94
    new-instance v0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/lang/Runnable;)V

    .line 102
    new-instance p2, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->clearCallingIdentifyAndTryCatch(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final clearCallingIdentifyAndTryCatch(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 43
    :try_start_0
    new-instance p0, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda5;

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public abstract getDefaultValue()Z
.end method

.method public abstract getFeatureName()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public isFeatureFlagEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public setFeatureFlagEnabled(Z)Z
    .locals 2

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->getDefaultValue()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    new-instance v1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    new-instance p1, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/accessibility/magnification/MagnificationFeatureFlagBase;->clearCallingIdentifyAndTryCatch(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
