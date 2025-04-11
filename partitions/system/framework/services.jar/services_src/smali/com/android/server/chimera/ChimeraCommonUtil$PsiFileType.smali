.class public final enum Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;
.super Ljava/lang/Enum;
.source "ChimeraCommonUtil.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

.field public static final enum CPU:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

.field public static final enum IO:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

.field public static final enum MEMORY:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;
    .locals 3

    .line 237
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->IO:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    sget-object v1, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->CPU:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    .line 238
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    const/4 v1, 0x0

    const-string v2, "/proc/pressure/io"

    const-string v3, "IO"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->IO:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 239
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    const/4 v1, 0x1

    const-string v2, "/proc/pressure/memory"

    const-string v3, "MEMORY"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->MEMORY:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 240
    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    const/4 v1, 0x2

    const-string v2, "/proc/pressure/cpu"

    const-string v3, "CPU"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->CPU:Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    .line 237
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->$values()[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 245
    iput-object p3, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->mPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;
    .locals 1

    .line 237
    const-class v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;
    .locals 1

    .line 237
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->$VALUES:[Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    invoke-virtual {v0}, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFileType;->mPath:Ljava/lang/String;

    return-object p0
.end method
