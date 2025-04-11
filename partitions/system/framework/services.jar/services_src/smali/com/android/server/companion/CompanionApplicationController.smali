.class public Lcom/android/server/companion/CompanionApplicationController;
.super Ljava/lang/Object;
.source "CompanionApplicationController.java"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

.field public final mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

.field public final mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;


# direct methods
.method public static synthetic $r8$lambda$aXFrJAFXbKKbolzjXrcmp223CSA(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController;->lambda$scheduleRebinding$0(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dcqhghliqTsRdlIl6Oserob69qE(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController;->onBinderDied(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/companion/CompanionApplicationController;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/server/companion/CompanionApplicationController;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 89
    iput-object p3, p0, Lcom/android/server/companion/CompanionApplicationController;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 90
    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;-><init>(Lcom/android/server/companion/CompanionApplicationController;Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    .line 91
    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    .line 92
    new-instance p1, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;-><init>(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap-IA;)V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    return-void
.end method

.method private synthetic lambda$scheduleRebinding$0(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController;->onRebindingCompanionApplicationTimeout(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    return-void
.end method


# virtual methods
.method public bindCompanionApplication(ILjava/lang/String;Z)V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    .line 110
    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->forPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CDM_CompanionApplicationController"

    .line 112
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not bind companion applications u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": eligible CompanionDeviceService not found.\nA CompanionDeviceService should declare an intent-filter for \"android.companion.CompanionDeviceService\" action and require \"android.permission.BIND_COMPANION_DEVICE_SERVICE\" permission."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    monitor-exit v2

    return-void

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    .line 127
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    if-nez v4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    .line 129
    :goto_1
    iget-object v6, p0, Lcom/android/server/companion/CompanionApplicationController;->mContext:Landroid/content/Context;

    .line 130
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 129
    invoke-static {v6, p1, v7, p3, v5}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->newInstance(Landroid/content/Context;ILandroid/content/ComponentName;ZZ)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 133
    :cond_3
    iget-object p3, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p3, p1, p2, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    .line 134
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    .line 138
    new-instance p3, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionApplicationController;)V

    invoke-virtual {p2, p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->setListener(Lcom/android/server/companion/CompanionDeviceServiceConnector$Listener;)V

    goto :goto_2

    .line 142
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    goto :goto_3

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 134
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Companion Device Application Controller: \n"

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 294
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "  Bound Companion Applications: "

    .line 295
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 296
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<empty>\n"

    .line 297
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    .line 299
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 300
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {v1, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    .line 302
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  Companion Applications Scheduled For Rebinding: "

    .line 304
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 305
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "<empty>\n"

    .line 306
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    const-string v0, "\n"

    .line 308
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 309
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->-$$Nest$mdump(Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;Ljava/io/PrintWriter;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 302
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->getValueForPackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 342
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 343
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 342
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isCompanionApplicationBound(ILjava/lang/String;)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isRebindingCompanionApplicationScheduled(ILjava/lang/String;)Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyCompanionApplicationDeviceAppeared(Landroid/companion/AssociationInfo;)V
    .locals 5

    .line 242
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 243
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDevice_Appeared() id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CDM_CompanionApplicationController"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    if-nez p0, :cond_0

    .line 253
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "notify_CompanionApplicationDevice_Appeared(): u"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is NOT bound."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Stacktrace"

    invoke-static {v4, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 260
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling onDeviceAppeared to userId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] package=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] associationId=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceAppeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public notifyCompanionApplicationDeviceDisappeared(Landroid/companion/AssociationInfo;)V
    .locals 5

    .line 267
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    .line 268
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDevice_Disappeared() id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CDM_CompanionApplicationController"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/CompanionApplicationController;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/CompanionDeviceServiceConnector;

    move-result-object p0

    if-nez p0, :cond_0

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "notify_CompanionApplicationDevice_Disappeared(): u"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is NOT bound."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "Stacktrace"

    invoke-static {v4, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 285
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling onDeviceDisappeared to userId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] package=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] associationId=["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postOnDeviceDisappeared(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public final onBinderDied(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 4

    .line 319
    invoke-virtual {p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->isPrimary()Z

    move-result v0

    const-string v1, "CDM_CompanionApplicationController"

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBinderDied() u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isPrimary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v1

    .line 324
    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    .line 327
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/companion/CompanionApplicationController;->shouldScheduleRebind(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController;->scheduleRebinding(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 327
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onPackagesChanged(I)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mCompanionServicesRegister:Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionApplicationController$CompanionServicesRegister;->invalidate(I)V

    return-void
.end method

.method public final onRebindingCompanionApplicationTimeout(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 3

    .line 223
    invoke-virtual {p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->containsValueForPackage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 228
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    .line 231
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v1

    .line 234
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    .line 235
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 231
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 238
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final scheduleRebinding(ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 3

    const-string v0, "CDM_CompanionApplicationController"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleRebinding() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->isRebindingCompanionApplicationScheduled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    .line 201
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 200
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->setValueForPackage(ILjava/lang/String;Ljava/lang/Object;)V

    .line 202
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 206
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;Lcom/android/server/companion/CompanionDeviceServiceConnector;)V

    const-wide/16 p0, 0x2710

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final shouldScheduleRebind(ILjava/lang/String;Z)Z
    .locals 7

    .line 355
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v0, p1, p2}, Lcom/android/server/companion/AssociationStore;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 356
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    .line 358
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p3, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 361
    invoke-virtual {v2, v4}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v2, v4}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onSelfManagedDeviceReporterBinderDied(I)V

    .line 367
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 368
    :cond_1
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v5

    :cond_2
    :goto_1
    move v2, v5

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    move v1, v5

    :cond_4
    return v1
.end method

.method public unbindCompanionApplication(ILjava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/CompanionApplicationController;->mBoundCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    iget-object v2, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    monitor-enter v2

    .line 160
    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController;->mScheduledForRebindingCompanionApplications:Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/CompanionApplicationController$AndroidPackageMap;->removePackage(ILjava/lang/String;)Ljava/lang/Object;

    .line 161
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/CompanionDeviceServiceConnector;

    .line 173
    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->postUnbind()V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 161
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 157
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
