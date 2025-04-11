.class public Lcom/android/server/asks/MORERULES;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public MALFORMED_APK:Ljava/lang/String;

.field public RANDOM_PKG:Ljava/lang/String;

.field public RANK:Ljava/lang/String;

.field public check_moreRule_Malformed:Z

.field public check_moreRule_RANK:Z

.field public check_moreRule_RandomPkg:Z

.field public moreRulePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    iput-boolean v0, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    iput-boolean v0, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    const-string v0, "famous"

    iput-object v0, p0, Lcom/android/server/asks/MORERULES;->RANK:Ljava/lang/String;

    const-string/jumbo v0, "randompkg"

    iput-object v0, p0, Lcom/android/server/asks/MORERULES;->RANDOM_PKG:Ljava/lang/String;

    const-string/jumbo v0, "malformed"

    iput-object v0, p0, Lcom/android/server/asks/MORERULES;->MALFORMED_APK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    iput-boolean v0, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    iput-boolean v0, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    if-eqz p1, :cond_5

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    aget-object p1, p1, v0

    const-string v1, "\\+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/asks/MORERULES;->RANK:Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/asks/MORERULES;->RANDOM_PKG:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/asks/MORERULES;->MALFORMED_APK:Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RANK:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_RandomPkg:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/asks/MORERULES;->check_moreRule_Malformed:Z

    if-eqz p1, :cond_5

    :cond_4
    iput p2, p0, Lcom/android/server/asks/MORERULES;->moreRulePolicy:I

    :cond_5
    return-void
.end method
