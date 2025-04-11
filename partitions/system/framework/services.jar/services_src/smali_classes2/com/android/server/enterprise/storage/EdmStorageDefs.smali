.class public abstract Lcom/android/server/enterprise/storage/EdmStorageDefs;
.super Ljava/lang/Object;
.source "EdmStorageDefs.java"


# static fields
.field public static FIREWALL_HOSTNAMES_COLUMNS:[Ljava/lang/String;

.field public static FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

.field public static FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

.field public static final sAppPackageNameControlMasks:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 170
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageDefs$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/storage/EdmStorageDefs$1;-><init>()V

    .line 171
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->sAppPackageNameControlMasks:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "adminUid"

    const-string v3, "ipAddress"

    const-string/jumbo v4, "portNumber"

    const-string/jumbo v5, "portLocation"

    const-string/jumbo v6, "packageName"

    const-string/jumbo v7, "signature"

    const-string/jumbo v8, "networkInterface"

    const-string/jumbo v9, "networkInterfaceStr"

    const-string v10, "direction"

    const-string/jumbo v11, "protocol"

    const-string v12, "addressType"

    const-string/jumbo v13, "targetIpAddress"

    const-string/jumbo v14, "ruleType"

    const-string/jumbo v15, "targetPortNumber"

    const-string/jumbo v16, "status"

    .line 1920
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v0, "userID"

    const-string v1, "adminUid"

    .line 1939
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    const-string v0, "ipAddress"

    const-string v2, "hostName"

    .line 1944
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_HOSTNAMES_COLUMNS:[Ljava/lang/String;

    return-void
.end method
