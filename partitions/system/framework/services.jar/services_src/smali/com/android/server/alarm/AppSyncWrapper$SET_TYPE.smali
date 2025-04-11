.class public final enum Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
.super Ljava/lang/Enum;
.source "AppSyncInfo.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum APPSYNC3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum CSC_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum NONE:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum PRELOADED_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;


# direct methods
.method public static synthetic $values()[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
    .locals 10

    sget-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v1, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v2, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->CSC_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v3, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v4, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v5, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->PRELOADED_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v6, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v7, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v8, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    sget-object v9, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->NONE:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    filled-new-array/range {v0 .. v9}, [Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "APPSYNC3P_PACKAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "SUSPICIOUS_PACKAGES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "CSC_PACKAGES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->CSC_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "ALLOWLIST_PACKAGES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "ALLOWLIST3P_PACKAGES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "PRELOADED_PACKAGES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->PRELOADED_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "SUSPICIOUS_PACKAGES_FROM_CONFIG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "ALLOWLIST_PACKAGES_FROM_CONFIG"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "ALLOWLIST3P_PACKAGES_FROM_CONFIG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "NONE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->NONE:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-static {}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->$values()[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->$VALUES:[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->$VALUES:[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    return-object v0
.end method
