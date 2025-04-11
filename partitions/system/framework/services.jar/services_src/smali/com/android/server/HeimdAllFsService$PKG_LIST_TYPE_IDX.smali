.class final enum Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;
.super Ljava/lang/Enum;
.source "HeimdAllFsService.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

.field public static final enum AI_MODEL:Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

.field public static final enum COMPRESS:Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;


# direct methods
.method public static synthetic $values()[Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;
    .locals 2

    sget-object v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->COMPRESS:Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    sget-object v1, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->AI_MODEL:Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    filled-new-array {v0, v1}, [Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    const-string v1, "COMPRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->COMPRESS:Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    new-instance v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    const-string v1, "AI_MODEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->AI_MODEL:Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    invoke-static {}, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->$values()[Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    move-result-object v0

    sput-object v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->$VALUES:[Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;
    .locals 1

    const-class v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    return-object p0
.end method

.method public static values()[Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;
    .locals 1

    sget-object v0, Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->$VALUES:[Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    invoke-virtual {v0}, [Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/HeimdAllFsService$PKG_LIST_TYPE_IDX;

    return-object v0
.end method
