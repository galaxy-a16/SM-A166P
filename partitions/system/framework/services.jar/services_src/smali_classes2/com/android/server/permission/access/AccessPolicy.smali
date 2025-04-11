.class public final Lcom/android/server/permission/access/AccessPolicy;
.super Ljava/lang/Object;
.source "AccessPolicy.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/AccessPolicy$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final schemePolicies:Landroid/util/ArrayMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/permission/access/AccessPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/AccessPolicy$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/AccessPolicy;->Companion:Lcom/android/server/permission/access/AccessPolicy$Companion;

    .line 328
    const-class v0, Lcom/android/server/permission/access/AccessPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 40
    new-instance v1, Lcom/android/server/permission/access/permission/UidPermissionPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/permission/UidPermissionPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Landroid/util/ArrayMap;Lcom/android/server/permission/access/SchemePolicy;)Lcom/android/server/permission/access/SchemePolicy;

    .line 41
    new-instance v1, Lcom/android/server/permission/access/appop/UidAppOpPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/appop/UidAppOpPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Landroid/util/ArrayMap;Lcom/android/server/permission/access/SchemePolicy;)Lcom/android/server/permission/access/SchemePolicy;

    .line 42
    new-instance v1, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;

    invoke-direct {v1}, Lcom/android/server/permission/access/appop/PackageAppOpPolicy;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/permission/access/AccessPolicy;->_init_$lambda$1$addPolicy(Landroid/util/ArrayMap;Lcom/android/server/permission/access/SchemePolicy;)Lcom/android/server/permission/access/SchemePolicy;

    .line 36
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/AccessPolicy;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    return-void
.end method

.method public static final _init_$lambda$1$addPolicy(Landroid/util/ArrayMap;Lcom/android/server/permission/access/SchemePolicy;)Lcom/android/server/permission/access/SchemePolicy;
    .locals 2

    .line 39
    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getSubjectScheme()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 81
    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v1, Landroid/util/ArrayMap;

    .line 39
    invoke-virtual {p1}, Lcom/android/server/permission/access/SchemePolicy;->getObjectScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/SchemePolicy;

    return-object p0
.end method


# virtual methods
.method public final getDecision(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;)I
    .locals 0

    .line 52
    invoke-virtual {p0, p2, p3}, Lcom/android/server/permission/access/AccessPolicy;->getSchemePolicy(Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/SchemePolicy;->getDecision(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;)I

    move-result p0

    return p0
.end method

.method public final getSchemePolicy(Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;)Lcom/android/server/permission/access/SchemePolicy;
    .locals 0

    const/4 p0, 0x0

    .line 317
    throw p0
.end method

.method public final getSchemePolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;
    .locals 1

    .line 47
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/SchemePolicy;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scheme policy for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final initialize(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/collection/IntSet;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;ZLjava/util/Map;Lcom/android/server/permission/access/collection/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Landroid/util/ArrayMap;)V
    .locals 3

    .line 70
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/permission/access/collection/IntSetKt;->plusAssign(Lcom/android/server/permission/access/collection/IntSet;Lcom/android/server/permission/access/collection/IntSet;)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/android/server/permission/access/SystemState;->setPackageStates(Ljava/util/Map;)V

    .line 73
    invoke-virtual {p0, p4}, Lcom/android/server/permission/access/SystemState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    .line 384
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/PackageState;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v0

    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    new-instance v2, Lcom/android/server/permission/access/collection/IndexedListSet;

    invoke-direct {v2}, Lcom/android/server/permission/access/collection/IndexedListSet;-><init>()V

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    check-cast v2, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 76
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/android/server/permission/access/collection/IndexedListSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0, p5}, Lcom/android/server/permission/access/SystemState;->setKnownPackages(Landroid/util/SparseArray;)V

    .line 79
    invoke-virtual {p0, p6}, Lcom/android/server/permission/access/SystemState;->setLeanback(Z)V

    .line 80
    invoke-virtual {p0, p7}, Lcom/android/server/permission/access/SystemState;->setConfigPermissions(Ljava/util/Map;)V

    .line 81
    invoke-virtual {p0, p8}, Lcom/android/server/permission/access/SystemState;->setPrivilegedPermissionAllowlistPackages(Lcom/android/server/permission/access/collection/IndexedListSet;)V

    .line 82
    invoke-virtual {p0, p9}, Lcom/android/server/permission/access/SystemState;->setPermissionAllowlist(Lcom/android/server/pm/permission/PermissionAllowlist;)V

    .line 83
    invoke-virtual {p0, p10}, Lcom/android/server/permission/access/SystemState;->setImplicitToSourcePermissions(Landroid/util/ArrayMap;)V

    .line 85
    invoke-virtual {p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p0

    .line 75
    invoke-virtual {p2}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_2

    .line 76
    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result p4

    .line 87
    new-instance p5, Lcom/android/server/permission/access/UserState;

    invoke-direct {p5}, Lcom/android/server/permission/access/UserState;-><init>()V

    invoke-virtual {p0, p4, p5}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final onInitialized(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 7

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 75
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 75
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 100
    invoke-virtual {v6, p1}, Lcom/android/server/permission/access/SchemePolicy;->onInitialized(Lcom/android/server/permission/access/MutateStateScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 6

    .line 158
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v0, :cond_5

    .line 163
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    .line 165
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v2

    .line 166
    invoke-virtual {v2, p2}, Lcom/android/server/permission/access/SystemState;->setPackageStates(Ljava/util/Map;)V

    .line 167
    invoke-virtual {v2, p3}, Lcom/android/server/permission/access/SystemState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    .line 168
    invoke-virtual {v2}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object p2

    .line 80
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    move p2, v3

    goto :goto_0

    .line 170
    :cond_0
    new-instance p3, Lcom/android/server/permission/access/collection/IndexedListSet;

    invoke-direct {p3}, Lcom/android/server/permission/access/collection/IndexedListSet;-><init>()V

    .line 81
    invoke-virtual {p2, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p2, 0x1

    :goto_0
    check-cast p3, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 129
    invoke-virtual {p3, p5}, Lcom/android/server/permission/access/collection/IndexedListSet;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-virtual {v2, p4}, Lcom/android/server/permission/access/SystemState;->setKnownPackages(Landroid/util/SparseArray;)V

    if-eqz p2, :cond_2

    .line 320
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p3

    move p4, v3

    :goto_1
    if-ge p4, p3, :cond_2

    .line 75
    invoke-virtual {p2, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_1

    .line 75
    invoke-virtual {p5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    .line 176
    invoke-virtual {v5, p1, v1}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 320
    :cond_2
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move p3, v3

    :goto_3
    if-ge p3, p2, :cond_4

    .line 75
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result p5

    move v1, v3

    :goto_4
    if-ge v1, p5, :cond_3

    .line 75
    invoke-virtual {p4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/SchemePolicy;

    .line 180
    invoke-virtual {v2, p1, v0}, Lcom/android/server/permission/access/SchemePolicy;->onPackageAdded(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    return-void

    .line 161
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Added package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t found in packageStates in onPackageAdded()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/lang/String;I)V
    .locals 4

    .line 225
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    .line 226
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/SystemState;->setPackageStates(Ljava/util/Map;)V

    .line 227
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/SystemState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    .line 228
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/SystemState;->setKnownPackages(Landroid/util/SparseArray;)V

    .line 230
    invoke-interface {p2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz p2, :cond_2

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_1

    .line 75
    invoke-virtual {p0, p5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, p4

    :goto_1
    if-ge v2, v1, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    .line 236
    invoke-virtual {v3, p1, p2, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageInstalled(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 233
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Installed package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isn\'t found in packageStates in onPackageInstalled()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 232
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/lang/String;I)V
    .locals 6

    .line 192
    invoke-interface {p2, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/SystemState;->setPackageStates(Ljava/util/Map;)V

    .line 198
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/SystemState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    .line 199
    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/permission/access/collection/IndexedListSet;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2, p5}, Lcom/android/server/permission/access/collection/IndexedListSet;->remove(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p2}, Lcom/android/server/permission/access/collection/IndexedListSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object p2

    .line 96
    invoke-virtual {p2, p6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    move v1, p3

    .line 206
    :goto_0
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/SystemState;->setKnownPackages(Landroid/util/SparseArray;)V

    .line 320
    iget-object p2, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p4

    move v0, p3

    :goto_1
    if-ge v0, p4, :cond_2

    .line 75
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, p3

    :goto_2
    if-ge v4, v3, :cond_1

    .line 75
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    .line 209
    invoke-virtual {v5, p1, p5, p6}, Lcom/android/server/permission/access/SchemePolicy;->onPackageRemoved(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move p4, p3

    :goto_3
    if-ge p4, p2, :cond_4

    .line 75
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v1, p3

    :goto_4
    if-ge v1, v0, :cond_3

    .line 75
    invoke-virtual {p5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/SchemePolicy;

    .line 213
    invoke-virtual {v2, p1, p6}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    return-void

    .line 193
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Removed package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is still in packageStates in onPackageRemoved()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 192
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/lang/String;II)V
    .locals 4

    .line 248
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    .line 249
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/SystemState;->setPackageStates(Ljava/util/Map;)V

    .line 250
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/SystemState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    .line 251
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/SystemState;->setKnownPackages(Landroid/util/SparseArray;)V

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_1

    .line 75
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, p3

    :goto_1
    if-ge v2, v1, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    .line 254
    invoke-virtual {v3, p1, p5, p6, p7}, Lcom/android/server/permission/access/SchemePolicy;->onPackageUninstalled(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V
    .locals 7

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 75
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 75
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 94
    invoke-virtual {v6, p1}, Lcom/android/server/permission/access/SchemePolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Map;Ljava/util/Map;Landroid/util/SparseArray;Ljava/lang/String;Z)V
    .locals 9

    .line 127
    new-instance v0, Lcom/android/server/permission/access/collection/IntSet;

    invoke-direct {v0}, Lcom/android/server/permission/access/collection/IntSet;-><init>()V

    .line 128
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p2}, Lcom/android/server/permission/access/SystemState;->setPackageStates(Ljava/util/Map;)V

    .line 130
    invoke-virtual {v1, p3}, Lcom/android/server/permission/access/SystemState;->setDisabledSystemPackageStates(Ljava/util/Map;)V

    .line 435
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/PackageState;

    .line 132
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result p3

    .line 134
    invoke-virtual {v1}, Lcom/android/server/permission/access/SystemState;->getAppIds()Landroid/util/SparseArray;

    move-result-object v3

    .line 80
    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/permission/access/collection/IntSet;->add(I)V

    .line 136
    new-instance v4, Lcom/android/server/permission/access/collection/IndexedListSet;

    invoke-direct {v4}, Lcom/android/server/permission/access/collection/IndexedListSet;-><init>()V

    .line 81
    invoke-virtual {v3, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    check-cast v4, Lcom/android/server/permission/access/collection/IndexedListSet;

    .line 129
    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/collection/IndexedListSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v1, p4}, Lcom/android/server/permission/access/SystemState;->setKnownPackages(Landroid/util/SparseArray;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/server/permission/access/collection/IntSet;->getSize()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_2
    if-ge p4, p2, :cond_5

    .line 76
    invoke-virtual {v0, p4}, Lcom/android/server/permission/access/collection/IntSet;->elementAt(I)I

    move-result v1

    .line 320
    iget-object v2, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move v4, p3

    :goto_3
    if-ge v4, v3, :cond_4

    .line 75
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, p3

    :goto_4
    if-ge v7, v6, :cond_3

    .line 75
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    .line 144
    invoke-virtual {v8, p1, v1}, Lcom/android/server/permission/access/SchemePolicy;->onAppIdAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 320
    :cond_5
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move p4, p3

    :goto_5
    if-ge p4, p2, :cond_7

    .line 75
    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    move v2, p3

    :goto_6
    if-ge v2, v1, :cond_6

    .line 75
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/SchemePolicy;

    .line 148
    invoke-virtual {v3, p1, p5, p6}, Lcom/android/server/permission/access/SchemePolicy;->onStorageVolumeMounted(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public final onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V
    .locals 7

    .line 259
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/SystemState;->setSystemReady(Z)V

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 75
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 75
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 261
    invoke-virtual {v6, p1}, Lcom/android/server/permission/access/SchemePolicy;->onSystemReady(Lcom/android/server/permission/access/MutateStateScope;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 7

    .line 105
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/collection/IntSet;->add(I)V

    .line 106
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Lcom/android/server/permission/access/UserState;

    invoke-direct {v1}, Lcom/android/server/permission/access/UserState;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 75
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 75
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 108
    invoke-virtual {v6, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->onUserAdded(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V
    .locals 7

    .line 113
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/SystemState;->getUserIds()Lcom/android/server/permission/access/collection/IntSet;

    move-result-object v0

    .line 94
    invoke-virtual {v0, p2}, Lcom/android/server/permission/access/collection/IntSet;->remove(I)V

    .line 114
    invoke-virtual {p1}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/AccessState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 75
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    .line 75
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/SchemePolicy;

    .line 116
    invoke-virtual {v6, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->onUserRemoved(Lcom/android/server/permission/access/MutateStateScope;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;)V
    .locals 17

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    const-string v1, "Unexpected event type "

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v4, :cond_1b

    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_3

    goto/16 :goto_e

    .line 94
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v0

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "access"

    .line 268
    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, ", expected "

    const-string v7, "Unexpected post-block depth "

    if-eqz v5, :cond_13

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eqz v5, :cond_6

    if-ne v5, v2, :cond_5

    goto :goto_2

    .line 54
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_7

    if-eq v5, v2, :cond_7

    if-eq v5, v3, :cond_7

    goto :goto_2

    .line 57
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_8

    if-eq v5, v2, :cond_a

    if-ne v5, v3, :cond_9

    :cond_8
    move-object/from16 v8, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    goto/16 :goto_9

    .line 94
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    move-object/from16 v8, p0

    .line 320
    iget-object v9, v8, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v10, :cond_c

    .line 75
    invoke-virtual {v9, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_b

    .line 75
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/android/server/permission/access/SchemePolicy;

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 271
    invoke-virtual {v11, v4, v3}, Lcom/android/server/permission/access/SchemePolicy;->parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v5, :cond_12

    .line 73
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v9

    if-eq v9, v2, :cond_11

    const/4 v10, 0x3

    if-ne v9, v10, :cond_10

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_e

    .line 109
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_d

    if-eq v9, v2, :cond_d

    if-eq v9, v10, :cond_d

    goto :goto_6

    .line 109
    :cond_e
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_f

    if-eq v5, v2, :cond_f

    const/4 v9, 0x3

    if-eq v5, v9, :cond_f

    goto :goto_7

    :cond_f
    const/4 v3, 0x3

    const/4 v4, 0x1

    goto/16 :goto_3

    .line 86
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_11
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_d

    if-eq v9, v2, :cond_d

    const/4 v10, 0x3

    if-eq v9, v10, :cond_d

    goto :goto_8

    .line 67
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v8, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 275
    sget-object v5, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unknown tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " when parsing system state"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 275
    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v0, :cond_1a

    .line 73
    :cond_14
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v2, :cond_18

    const/4 v6, 0x3

    if-ne v5, v6, :cond_17

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_15

    .line 109
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_14

    if-eq v5, v2, :cond_14

    if-eq v5, v6, :cond_14

    goto :goto_b

    .line 109
    :cond_15
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_16

    if-eq v0, v2, :cond_16

    const/4 v5, 0x3

    if-eq v0, v5, :cond_16

    goto :goto_c

    :cond_16
    const/4 v3, 0x3

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 86
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_18
    :goto_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v9, 0x1

    if-eq v5, v9, :cond_19

    if-eq v5, v2, :cond_19

    const/4 v10, 0x3

    if-eq v5, v10, :cond_14

    goto :goto_d

    :cond_19
    const/4 v10, 0x3

    goto :goto_a

    .line 67
    :cond_1a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    :goto_e
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;I)V
    .locals 17

    move/from16 v0, p3

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "Unexpected event type "

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v5, :cond_1a

    if-eq v1, v3, :cond_4

    if-ne v1, v4, :cond_3

    goto/16 :goto_d

    .line 94
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v1

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "access"

    .line 291
    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ", expected "

    const-string v8, "Unexpected post-block depth "

    if-eqz v6, :cond_13

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v6

    if-eqz v6, :cond_6

    if-ne v6, v3, :cond_5

    goto :goto_2

    .line 54
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_7

    if-eq v6, v3, :cond_7

    if-eq v6, v4, :cond_7

    goto :goto_2

    .line 57
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v5, :cond_8

    if-eq v6, v3, :cond_a

    if-ne v6, v4, :cond_9

    :cond_8
    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    goto/16 :goto_9

    .line 94
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v6

    move-object/from16 v9, p0

    .line 320
    iget-object v10, v9, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_c

    .line 75
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v15, :cond_b

    .line 75
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/server/permission/access/SchemePolicy;

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 294
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/permission/access/SchemePolicy;->parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/AccessState;I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v6, :cond_12

    .line 73
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_11

    const/4 v11, 0x3

    if-ne v5, v11, :cond_10

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v6, :cond_e

    .line 109
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_d

    if-eq v5, v10, :cond_d

    if-eq v5, v11, :cond_d

    const/4 v10, 0x2

    goto :goto_6

    .line 109
    :cond_e
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_f

    const/4 v6, 0x2

    if-eq v5, v6, :cond_f

    const/4 v6, 0x3

    if-eq v5, v6, :cond_f

    goto :goto_7

    :cond_f
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto/16 :goto_3

    .line 86
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_11
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_d

    const/4 v10, 0x2

    if-eq v5, v10, :cond_d

    const/4 v10, 0x3

    if-eq v5, v10, :cond_d

    goto :goto_8

    .line 67
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move-object/from16 v9, p0

    move-object/from16 v4, p1

    move-object/from16 v3, p2

    .line 300
    sget-object v5, Lcom/android/server/permission/access/AccessPolicy;->LOG_TAG:Ljava/lang/String;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 301
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unknown tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when parsing user state for user "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 299
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v1, :cond_19

    .line 73
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_18

    const/4 v7, 0x3

    if-ne v5, v7, :cond_17

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_15

    .line 109
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_14

    if-eq v5, v6, :cond_14

    if-eq v5, v7, :cond_14

    const/4 v6, 0x2

    goto :goto_a

    .line 109
    :cond_15
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_16

    const/4 v5, 0x2

    if-eq v1, v5, :cond_16

    const/4 v5, 0x3

    if-eq v1, v5, :cond_16

    goto :goto_b

    :cond_16
    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 86
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_18
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eq v5, v6, :cond_14

    if-eq v5, v10, :cond_14

    if-eq v5, v11, :cond_14

    goto :goto_c

    .line 67
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_d
    return-void
.end method

.method public final serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "access"

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 75
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    .line 75
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    .line 283
    invoke-virtual {v8, p1, p2}, Lcom/android/server/permission/access/SchemePolicy;->serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .locals 9

    const/4 v0, 0x0

    const-string v1, "access"

    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 320
    iget-object p0, p0, Lcom/android/server/permission/access/AccessPolicy;->schemePolicies:Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 75
    invoke-virtual {p0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 74
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    .line 75
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/permission/access/SchemePolicy;

    .line 311
    invoke-virtual {v8, p1, p2, p3}, Lcom/android/server/permission/access/SchemePolicy;->serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final setDecision(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;I)V
    .locals 0

    .line 55
    invoke-virtual {p0, p2, p3}, Lcom/android/server/permission/access/AccessPolicy;->getSchemePolicy(Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/permission/access/SchemePolicy;->setDecision(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/AccessUri;Lcom/android/server/permission/access/AccessUri;I)V

    return-void
.end method
