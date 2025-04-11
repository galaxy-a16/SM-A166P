.class public Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;
.super Ljava/lang/Object;
.source "RestrictedReceiverFilter.java"


# static fields
.field public static sInstance:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;


# instance fields
.field public final mAllowedItems:Ljava/util/Map;

.field public mEnabled:Z

.field public final mExemptedPackageNames:Ljava/util/Set;

.field public final mExemptedPackagePrefixNames:Ljava/util/List;

.field public mLock:Ljava/lang/Object;

.field public final mRestrictedActions:Ljava/util/List;

.field public final mRestrictedPackageNames:Ljava/util/Set;

.field public final mRestrictedPackagePrefixNames:Ljava/util/List;

.field public final mViolationActions:Ljava/util/Map;

.field public final mViolationCodePaths:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$-WFZadZz385KdGLotVaYYY6MTrE(Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->lambda$getViolationLog$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;
    .locals 2

    .line 54
    sget-object v0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    if-nez v0, :cond_1

    .line 55
    const-class v0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    invoke-direct {v1}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;-><init>()V

    sput-object v1, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 61
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->sInstance:Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;

    return-object v0
.end method

.method private synthetic lambda$getViolationLog$0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "    violations:\n"

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addViolationLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restricted action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestrictedReceiverFilter"

    .line 185
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 193
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationCodePaths:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public clearItemsLocked()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public enableAndConfigure(Z)V
    .locals 1

    .line 69
    iput-boolean p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    .line 70
    iget-object p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->clearItemsLocked()V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->loadItemsLocked()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->clearItemsLocked()V

    .line 77
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public filterReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 124
    iget-boolean p2, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mEnabled:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 127
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    monitor-exit p2

    return v0

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->isExemptedPackageLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->isRestrictedPackageLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->isAllowedActionLocked(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    monitor-exit p2

    return v0

    .line 133
    :cond_4
    :goto_0
    monitor-exit p2

    return v0

    :catchall_0
    move-exception p0

    .line 136
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getViolationLog()Ljava/lang/String;
    .locals 4

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Restricted receiver violations:\n"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "No Restricted receiver violations"

    .line 205
    monitor-exit v1

    return-object p0

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mViolationActions:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;Ljava/lang/StringBuilder;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 215
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 215
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isAllowedActionLocked(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 161
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final isExemptedPackageLocked(Ljava/lang/String;)Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isRestrictedPackageLocked(Ljava/lang/String;)Z
    .locals 4

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 149
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public loadItemsInternalLocked(Ljava/lang/String;)V
    .locals 2

    .line 88
    sget-boolean v0, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->FW_BR_ALLOW_LIST_WITH_SCPM:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParserWithScpm;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParserWithScpm;-><init>()V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;

    invoke-direct {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;-><init>()V

    :goto_0
    if-nez p1, :cond_1

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->parseAllowList()V

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->parseAllowList(Ljava/lang/String;)V

    .line 97
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mAllowedItems:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->getPackageMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedActions:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->getRestricedIntent()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackageNames:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->getAllowedPackageNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mExemptedPackagePrefixNames:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->getAllowedPackagePrefixNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackageNames:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->getRestrictedPackageNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->mRestrictedPackagePrefixNames:Ljava/util/List;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->getRestrictedPackagePrefixNames()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/server/pm/allowlist/BroadcastReceiverListParser;->isWorkCompChangedEnabled()Z

    move-result p0

    .line 106
    sget-boolean p1, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    if-eq p1, p0, :cond_2

    .line 107
    sput-boolean p0, Lcom/samsung/android/rune/PMRune;->PM_WA_WORK_COMP_CHANGED:Z

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PM_WA_WORK_COMP_CHANGED change to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final loadItemsLocked()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->loadItemsInternalLocked(Ljava/lang/String;)V

    return-void
.end method

.method public logViolationsIfNeeded(Ljava/util/function/Consumer;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/allowlist/RestrictedReceiverFilter;->getViolationLog()Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
