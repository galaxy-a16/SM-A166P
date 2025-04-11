.class public Lcom/android/server/chimera/ChimeraAppClassifier;
.super Ljava/lang/Object;
.source "ChimeraAppClassifier.java"


# static fields
.field public static final PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

.field public static final PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

.field public static final PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

.field public static final mProtectOnBubDisabledList:Ljava/util/List;


# instance fields
.field public final mBluetoothUsingUidList:Ljava/util/List;

.field public final mLongLiveApps:Ljava/util/Map;

.field public final mPackageTypeMap:Ljava/util/Map;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method public static synthetic $r8$lambda$4hXrtdZc_Du4IVxJTiNuy3K1n8I(Lcom/android/server/chimera/ChimeraAppClassifier;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;->lambda$updateBluetoothUsingUidList$0(Ljava/util/Map;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$1;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$1;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 141
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$2;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$2;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 146
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$3;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$3;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 154
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 160
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-void
.end method

.method private synthetic lambda$updateBluetoothUsingUidList$0(Ljava/util/Map;)V
    .locals 3

    .line 323
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final clearLongLiveApps()V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPackageType(Ljava/lang/String;ILjava/util/Set;I)I
    .locals 3

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 279
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/chimera/ChimeraAppClassifier;->mars2ChimeraType(I)I

    move-result p3

    .line 284
    :cond_1
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit16 p3, p3, 0x1000

    .line 291
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraAppClassifier;->isNeverKilledApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    const/high16 p2, 0x100000

    or-int/2addr p3, p2

    .line 295
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/server/chimera/ChimeraAppClassifier;->isBluetoothUsingUid(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/high16 p2, 0x200000

    or-int/2addr p3, p2

    .line 299
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;->isProtectOnBubDisabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/high16 p0, 0x400000

    or-int/2addr p3, p0

    :cond_5
    return p3
.end method

.method public final isBluetoothUsingUid(I)Z
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLongLiveApp(Ljava/lang/String;I)Z
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 239
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 238
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 241
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 242
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isLongLiveApp: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChimeraAppClassifier"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNeverKilledApp(Ljava/lang/String;I)Z
    .locals 1

    .line 250
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraAppClassifier;->isLongLiveApp(Ljava/lang/String;I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 254
    :cond_0
    iget-object p2, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p2}, Lcom/android/server/chimera/SystemRepository;->isHomeHubDocked()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_2

    const-string p2, "com.android.cts."

    .line 258
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 262
    :cond_2
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p0, p2, :cond_3

    .line 263
    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 265
    :cond_3
    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 266
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public final isProtectOnBubDisabled(Ljava/lang/String;)Z
    .locals 0

    .line 336
    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final mars2ChimeraType(I)I
    .locals 1

    .line 0
    and-int/lit16 p0, p1, 0x400

    if-lez p0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_1

    or-int/lit16 p0, p0, 0x4000

    :cond_1
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_2

    const/high16 v0, 0x20000

    or-int/2addr p0, v0

    :cond_2
    const v0, 0x30120

    and-int/2addr v0, p1

    if-lez v0, :cond_3

    const/high16 v0, 0x40000

    or-int/2addr p0, v0

    :cond_3
    and-int/lit16 v0, p1, 0x1000

    if-lez v0, :cond_4

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    :cond_4
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_5

    or-int/lit16 p0, p0, 0x80

    :cond_5
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_6

    or-int/lit8 p0, p0, 0x20

    :cond_6
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_7

    or-int/lit8 p0, p0, 0x40

    :cond_7
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_8

    or-int/lit16 p0, p0, 0x800

    :cond_8
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_9

    or-int/lit8 p0, p0, 0x8

    :cond_9
    and-int/lit16 v0, p1, 0x2000

    if-lez v0, :cond_a

    or-int/lit8 p0, p0, 0x2

    :cond_a
    if-eqz p1, :cond_b

    if-nez p0, :cond_c

    :cond_b
    or-int/lit8 p0, p0, 0x1

    :cond_c
    return p0
.end method

.method public prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 308
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppClassifier;->clearLongLiveApps()V

    .line 309
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppClassifier;->updateBluetoothUsingUidList()V

    return-void
.end method

.method public final updateBluetoothUsingUidList()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda1;-><init>()V

    .line 321
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/chimera/ChimeraAppClassifier;)V

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePackagesType(Ljava/util/List;)V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, p1}, Lcom/android/server/chimera/SystemRepository;->getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 220
    :try_start_0
    aget-object v2, v0, v2

    const/4 v3, 0x1

    .line 221
    aget-object v3, v0, v3

    const/4 v4, 0x2

    .line 222
    aget-object v0, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    const-string v0, "ChimeraAppClassifier"

    const-string v1, "NumberFormatException!"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
