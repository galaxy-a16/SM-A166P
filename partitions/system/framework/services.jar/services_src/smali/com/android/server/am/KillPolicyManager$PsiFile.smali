.class public Lcom/android/server/am/KillPolicyManager$PsiFile;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# instance fields
.field public mFullAvg10:D

.field public mIsEmptyFile:Z

.field public mPsiFullTotal:J

.field public mPsiSomeTotal:J

.field public mSomeAvg10:D


# direct methods
.method public static synthetic $r8$lambda$js-Y9FebQDCXhe5N3-DQvkos1dE(Lcom/android/server/am/KillPolicyManager$PsiFile;Lcom/android/server/am/KillPolicyManager$PsiDataType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager$PsiFile;->lambda$new$0(Lcom/android/server/am/KillPolicyManager$PsiDataType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/KillPolicyManager$PsiFile;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/server/am/KillPolicyManager$PsiDataType;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "some"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const-string/jumbo v2, "total"

    const/4 v3, 0x1

    const-string v4, "avg10"

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, v4, v3}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mPsiSomeTotal:J

    goto :goto_0

    :cond_1
    const-string v0, "full"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2, v4, v3}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mFullAvg10:D

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiDataType;->TOTAL:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p2, v2, v1}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mPsiFullTotal:J

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final getItem(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public getSomeAvg10()D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mSomeAvg10:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    return p0
.end method
