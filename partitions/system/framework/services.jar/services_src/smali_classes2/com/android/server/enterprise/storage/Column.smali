.class public Lcom/android/server/enterprise/storage/Column;
.super Ljava/lang/Object;
.source "Column.java"


# instance fields
.field public mColumnName:Ljava/lang/String;

.field public mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public mDefaultValue:Ljava/lang/String;

.field public mIsPrimaryKey:Z

.field public mProperties:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 52
    iput-boolean p3, p0, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    .line 53
    iput-object p4, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSQLDeclaration()Ljava/lang/String;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 61
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, "%s DEFAULT %s"

    .line 65
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
