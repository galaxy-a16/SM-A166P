.class public final enum Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
.super Ljava/lang/Enum;
.source "Column.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public static final enum TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 5

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    sget-object v1, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    sget-object v2, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    sget-object v3, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    sget-object v4, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->INTEGER:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v1, "TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->TEXT:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v1, "NUMERIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->NUMERIC:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v1, "BLOB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->BLOB:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    new-instance v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    const-string v1, "REAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->REAL:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-static {}, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$values()[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->$VALUES:[Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    return-object v0
.end method
