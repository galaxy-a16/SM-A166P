.class public Lcom/samsung/android/server/corestate/CoreStateObserverController;
.super Ljava/lang/Object;
.source "CoreStateObserverController.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "CoreStateObserverController"


# instance fields
.field public final mCallback:Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;

.field public final mContext:Landroid/content/Context;

.field public final mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

.field public final mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

.field public final mStartedUserIds:Landroid/util/ArraySet;

.field public final mStateForUser:Landroid/util/SparseArray;

.field public final mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

.field public final mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 38
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;Landroid/os/Handler;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;

    .line 52
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-direct {p2, p1, p3, p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    .line 53
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    .line 54
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    invoke-direct {p2, p3, p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;-><init>(Landroid/os/Handler;Lcom/samsung/android/server/corestate/CoreStateObserverController;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    .line 55
    new-instance p2, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    invoke-direct {p2, p1}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    .line 57
    sget-boolean p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 58
    sget-object p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    const-string p1, "CoreStateController()"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public copyCoreStateLocked(I)Landroid/os/Bundle;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_0

    .line 154
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    :goto_0
    return-object p0
.end method

.method public init()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->init()V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    return-void
.end method

.method public onCoreStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onCoreStateChanged(ILjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public final populateCoreState(I)I
    .locals 3

    .line 95
    sget-boolean v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "populateCoreState(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSystemFeatureObserver:Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;->populateState(Landroid/os/Bundle;I)I

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v1

    or-int/2addr v2, v1

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v1, :cond_3

    .line 111
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populateState(Landroid/os/Bundle;I)I

    move-result v1

    or-int/2addr v2, v1

    .line 113
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mPreferenceObserver:Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;

    if-eqz p0, :cond_4

    .line 114
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;->populateState(Landroid/os/Bundle;I)I

    move-result p0

    or-int/2addr v2, p0

    :cond_4
    return v2
.end method

.method public final sendCoreState(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZILjava/lang/Runnable;)V

    return-void
.end method

.method public final sendCoreState(ZILjava/lang/Runnable;)V
    .locals 4

    .line 74
    sget-boolean v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCoreState(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, p2, v0, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;->onCoreStateChanged(Landroid/os/Bundle;IZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    and-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 84
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->populateCoreState(I)I

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;->onCoreStateChanged(Landroid/os/Bundle;IZLjava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_4

    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mCallback:Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;

    invoke-virtual {p0, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->copyCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, p0, p2, v1, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController$Callback;->onCoreStateChanged(Landroid/os/Bundle;IZLjava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 168
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->setState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startUserLocked(IZZ)V
    .locals 3

    .line 120
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUserLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    :cond_0
    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    .line 131
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->sendCoreState(ZI)V

    :cond_2
    return-void
.end method

.method public stopUserLocked(IZ)V
    .locals 3

    .line 136
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUserLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mSettingObserver:Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStartedUserIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->endObserveCoreStateSettingsForSingleUser(Landroid/util/ArraySet;I)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mStateForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p2, :cond_1

    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateObserverController;->mVolatileObserver:Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;

    if-eqz p0, :cond_1

    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->removeStatesForUser(I)V

    :cond_1
    return-void
.end method
