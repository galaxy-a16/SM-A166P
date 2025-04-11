.class public Lp9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:I = -0x1


# instance fields
.field public final a:Lp9/b;

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lp9/b;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp9/c;->a:Lp9/b;

    iput-object p2, p0, Lp9/c;->b:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lp9/c;
    .locals 3

    const-string v0, "EXTRA_TASKID"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const v1, 0x989680

    rem-int/2addr v0, v1

    const-string v1, "EXTRA_DATA"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->value()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance p0, Lp9/c;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->access$000(I)Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    return-object p0

    :cond_0
    const-string v2, "EXTRA_MID"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lp9/a;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->access$100(I)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Lp9/a;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v2
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4

    sget v0, Lp9/c;->c:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lfc/e;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "e"

    if-nez p0, :cond_0

    const-string p0, "fail to get job id selection key(int)"

    invoke-static {v1, p0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "com.samsung.android.sdk.smp.JobIdSelectionKey"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "job id selection key : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x63

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    sput v0, Lp9/c;->c:I

    :cond_1
    sget p0, Lp9/c;->c:I

    const v0, 0x989680

    mul-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public c(Landroid/content/Context;)I
    .locals 0

    iget-object p0, p0, Lp9/c;->a:Lp9/b;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lp9/b;->value()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x895440

    :goto_0
    invoke-static {p1}, Lp9/c;->b(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public d(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_TASKID"

    invoke-virtual {p0, p1}, Lp9/c;->c(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lp9/c;->b:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p1, "EXTRA_DATA"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp9/c;->a:Lp9/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method
