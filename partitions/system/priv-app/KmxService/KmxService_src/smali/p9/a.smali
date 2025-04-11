.class public final Lp9/a;
.super Lp9/c;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lp9/c;-><init>(Lp9/b;Landroid/os/Bundle;)V

    iput-object p3, p0, Lp9/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)I
    .locals 3

    iget-object v0, p0, Lp9/c;->a:Lp9/b;

    const v1, 0x895440

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lp9/a;->d:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lc9/b;->D(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2}, Lc9/b;->c()V

    const/4 v2, -0x1

    if-eq p0, v2, :cond_2

    invoke-interface {v0}, Lp9/b;->value()I

    move-result v0

    invoke-static {p1}, Lp9/c;->b(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p1, v0

    rem-int/lit16 p0, p0, 0x3e8

    add-int/2addr p0, p1

    return p0

    :cond_2
    return v1
.end method

.method public final d(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    invoke-super {p0, p1}, Lp9/c;->d(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lp9/a;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "EXTRA_MID"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lp9/c;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "marketing_sub_action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lp9/a;->d:Ljava/lang/String;

    const-string v3, "-"

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lp9/c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lp9/c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
