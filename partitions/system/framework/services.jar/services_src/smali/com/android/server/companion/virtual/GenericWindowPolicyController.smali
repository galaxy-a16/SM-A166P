.class public Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.super Landroid/window/DisplayWindowPolicyController;
.source "GenericWindowPolicyController.java"


# static fields
.field public static final BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;


# instance fields
.field public final mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

.field public final mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field public final mAllowedActivities:Landroid/util/ArraySet;

.field public final mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

.field public final mAllowedUsers:Landroid/util/ArraySet;

.field public final mBlockedActivities:Landroid/util/ArraySet;

.field public final mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

.field public final mDefaultActivityPolicy:I

.field public final mDisplayCategories:Ljava/util/Set;

.field public mDisplayId:I

.field public final mGenericWindowPolicyControllerLock:Ljava/lang/Object;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntentListenerCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$IntentListenerCallback;

.field public final mPipBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$PipBlockedCallback;

.field public final mRunningAppsChangedListeners:Landroid/util/ArraySet;

.field public final mRunningUids:Landroid/util/ArraySet;

.field public final mSecureWindowCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$SecureWindowCallback;

.field public final mShowTasksInHostDeviceRecents:Z


# direct methods
.method public static synthetic $r8$lambda$2XVsHnDJtrK5agLVxd5-Ao0UKCU(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$isEnteringPipAllowed$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Aeg4WeHxY99afHg1YJp9vLS4csk(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/content/ComponentName;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onTopActivityChanged$1(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HfGxZXahYhbS5ZRU8fXk_AZaYdA(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/content/pm/ActivityInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$keepActivityOnWindowFlagsChanged$0(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZWFSL0NuuyIbC-EM3gY7wjHCFY(Lcom/android/server/companion/virtual/GenericWindowPolicyController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onRunningAppsChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$nH08hCrL42LRiYj8bEtKI2uaRWE(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->lambda$onRunningAppsChanged$3(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(IILandroid/util/ArraySet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceManager$ActivityListener;Lcom/android/server/companion/virtual/GenericWindowPolicyController$PipBlockedCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController$SecureWindowCallback;Lcom/android/server/companion/virtual/GenericWindowPolicyController$IntentListenerCallback;Ljava/util/Set;Z)V
    .locals 3

    move-object v0, p0

    .line 183
    invoke-direct {p0}, Landroid/window/DisplayWindowPolicyController;-><init>()V

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 123
    iput v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 125
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 131
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    move-object v1, p3

    .line 184
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    .line 185
    new-instance v1, Landroid/util/ArraySet;

    move-object v2, p4

    invoke-direct {v1, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 186
    new-instance v1, Landroid/util/ArraySet;

    move-object v2, p5

    invoke-direct {v1, p5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 187
    new-instance v1, Landroid/util/ArraySet;

    move-object v2, p6

    invoke-direct {v1, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedActivities:Landroid/util/ArraySet;

    .line 188
    new-instance v1, Landroid/util/ArraySet;

    move-object v2, p7

    invoke-direct {v1, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedActivities:Landroid/util/ArraySet;

    move v1, p8

    .line 189
    iput v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    move-object v1, p11

    .line 190
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    .line 191
    invoke-virtual {p0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->setInterestedWindowFlags(II)V

    move-object v1, p9

    .line 192
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    move-object v1, p10

    .line 193
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mPipBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$PipBlockedCallback;

    move-object v1, p12

    .line 194
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mSecureWindowCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$SecureWindowCallback;

    move-object/from16 v1, p13

    .line 195
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIntentListenerCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$IntentListenerCallback;

    move-object/from16 v1, p14

    .line 196
    iput-object v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    move/from16 v1, p15

    .line 197
    iput-boolean v1, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    return-void
.end method

.method private synthetic lambda$isEnteringPipAllowed$4(I)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mPipBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$PipBlockedCallback;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$PipBlockedCallback;->onEnteringPipBlocked(I)V

    return-void
.end method

.method private synthetic lambda$keepActivityOnWindowFlagsChanged$0(Landroid/content/pm/ActivityInfo;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mSecureWindowCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$SecureWindowCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$SecureWindowCallback;->onSecureWindowShown(II)V

    return-void
.end method

.method private synthetic lambda$onRunningAppsChanged$2()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v0, p0}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method public static synthetic lambda$onRunningAppsChanged$3(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 1

    .line 328
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;

    .line 329
    invoke-interface {v0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTopActivityChanged$1(Landroid/content/ComponentName;I)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v0, p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public final activityMatchesDisplayCategory(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 364
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 366
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 367
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IIZ)Z
    .locals 3

    .line 243
    invoke-virtual {p0, p3}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    .line 248
    sget-object v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 253
    :cond_1
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    :cond_2
    if-nez p4, :cond_3

    return v2

    :cond_3
    const-string p4, "GenericWindowPolicyController"

    if-eqz p5, :cond_4

    .line 261
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 262
    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Virtual device blocking cross task navigation of "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    :cond_4
    if-eqz p5, :cond_5

    .line 267
    iget-object p5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {p5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_5

    iget-object p5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 268
    invoke-virtual {p5, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_5

    .line 269
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Virtual device not allowing cross task navigation of "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    .line 275
    :cond_5
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mIntentListenerCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$IntentListenerCallback;

    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    .line 276
    invoke-interface {p0, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$IntentListenerCallback;->shouldInterceptIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Virtual device has intercepted intent"

    .line 277
    invoke-static {p4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    return v2
.end method

.method public canContainActivities(Ljava/util/List;I)Z
    .locals 4

    .line 224
    invoke-virtual {p0, p2}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 228
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 230
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    .line 231
    invoke-virtual {p0, v2, v0, v0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 232
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p1, p0, v2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final canContainActivity(Landroid/content/pm/ActivityInfo;II)Z
    .locals 6

    .line 373
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 376
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 377
    sget-object v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 382
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->activityMatchesDisplayCategory(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    const-string v4, "GenericWindowPolicyController"

    if-nez v2, :cond_2

    .line 383
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayCategories:Ljava/util/Set;

    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The activity\'s required display category: %s is not found on virtual display with the following categories: %s"

    .line 383
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 389
    :cond_2
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 390
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 391
    iget-object v5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 392
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Virtual device activity not allowed from user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 395
    :cond_3
    iget v5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedActivities:Landroid/util/ArraySet;

    .line 396
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 397
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Virtual device blocking launch of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 400
    :cond_4
    iget v5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    if-ne v5, v3, :cond_5

    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedActivities:Landroid/util/ArraySet;

    .line 401
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 402
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not in the allowed list."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const-wide/32 v4, 0xc05e3df

    .line 405
    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, p0, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_7

    and-int/lit16 p0, p2, 0x2000

    if-eqz p0, :cond_6

    return v1

    :cond_6
    const/high16 p0, 0x80000

    and-int/2addr p0, p3

    if-eqz p0, :cond_7

    return v1

    :cond_7
    return v3
.end method

.method public canShowTasksInHostDeviceRecents()Z
    .locals 0

    .line 338
    iget-boolean p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    return p0
.end method

.method public containsUid(I)Z
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 359
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRunningAppsChangedListenersSizeForTesting()I
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 422
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEnteringPipAllowed(I)Z
    .locals 2

    .line 343
    invoke-super {p0, p1}, Landroid/window/DisplayWindowPolicyController;->isEnteringPipAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .locals 2

    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 297
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {p2, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 319
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 320
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 327
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;II)V
    .locals 1

    .line 308
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 310
    iget-object p2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/content/ComponentName;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplayId(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    return-void
.end method

.method public unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
