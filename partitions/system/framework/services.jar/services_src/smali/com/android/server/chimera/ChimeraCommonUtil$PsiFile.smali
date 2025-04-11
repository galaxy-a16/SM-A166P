.class public Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;
.super Ljava/lang/Object;
.source "ChimeraCommonUtil.java"


# instance fields
.field public mFullAvg10:D

.field public mIsEmptyFile:Z

.field public mPsiFullTotal:J

.field public mPsiSomeTotal:J

.field public mSomeAvg10:D


# direct methods
.method public static synthetic $r8$lambda$ZIN-PaT98q97Ksd3yB-1YC2dF1E(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->lambda$new$0(Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)V
    .locals 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "some"

    .line 269
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const-string/jumbo v2, "total"

    const/4 v3, 0x1

    const-string v4, "avg10"

    if-eqz v0, :cond_1

    .line 270
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_0

    .line 271
    invoke-virtual {p0, p2, v4, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mSomeAvg10:D

    goto :goto_0

    .line 272
    :cond_0
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_3

    .line 273
    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    goto :goto_0

    :cond_1
    const-string v0, "full"

    .line 275
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->AVG10:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_2

    .line 277
    invoke-virtual {p0, p2, v4, v3}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mFullAvg10:D

    goto :goto_0

    .line 278
    :cond_2
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;->TOTAL:Lcom/android/server/chimera/ChimeraCommonUtil$PsiDataType;

    if-ne p1, v0, :cond_3

    .line 279
    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const-string p0, " "

    .line 287
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    array-length p2, p0

    if-le p2, p3, :cond_0

    aget-object p2, p0, p3

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    aget-object p0, p0, p3

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public getPsiFullTotal()J
    .locals 2

    .line 305
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiFullTotal:J

    return-wide v0
.end method

.method public getPsiSomeTotal()J
    .locals 2

    .line 301
    iget-wide v0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mPsiSomeTotal:J

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lcom/android/server/chimera/ChimeraCommonUtil$PsiFile;->mIsEmptyFile:Z

    return p0
.end method
