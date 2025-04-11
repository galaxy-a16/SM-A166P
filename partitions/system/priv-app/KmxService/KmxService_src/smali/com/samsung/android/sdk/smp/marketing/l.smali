.class public final Lcom/samsung/android/sdk/smp/marketing/l;
.super Lcom/samsung/android/sdk/smp/marketing/g;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/lang/String;


# instance fields
.field public J:I

.field public K:I

.field public L:Z

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:Ljava/lang/String;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public final Y:Ljava/util/ArrayList;

.field public final Z:Ljava/util/ArrayList;

.field public a0:Ljava/util/ArrayList;

.field public b0:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/l;->c0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->Y:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->Z:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;)V
    .locals 8

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/l;->c0:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "fail to clear. db open fail"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/smp/common/constants/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lc9/b;->F(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/common/constants/MarketingState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lfc/e;->r(Landroid/content/Context;)I

    move-result v2

    const/16 v4, 0x1f

    const/4 v5, 0x0

    if-lt v2, v4, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/g;->E:I

    invoke-static {p1, v2}, Lfc/e;->A(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v0, v3}, Lc9/b;->M(Ljava/lang/String;)Z

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "clearDisplayedMarketing. visible to user:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isRedirected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lc9/b;->M(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_1

    :cond_2
    const-string v2, "clearDisplayedMarketing. generate none_reaction feedback"

    invoke-static {v1, v3, v2}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v1, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_1
    invoke-static {p1, v3, v1, v5}, Lcom/samsung/android/sdk/smp/marketing/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->e(Landroid/content/Context;)V

    invoke-virtual {v0}, Lc9/b;->c()V

    return-void
.end method

.method public final g(Landroid/content/Context;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->v:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->E:I

    invoke-static {p1, p0}, Lfc/e;->A(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h(Landroid/content/Context;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->h(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final i(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/g;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/smp/marketing/g;->b(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/g;->v:I

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/g;->c(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final j()Landroid/os/Bundle;
    .locals 12

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->j()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->M:Ljava/lang/String;

    const-string v2, "ticker"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->J:I

    const-string v2, "f_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->K:I

    const-string v2, "e_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->N:Ljava/lang/String;

    const-string v2, "content_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->O:Ljava/lang/String;

    const-string v2, "content_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->P:Ljava/lang/String;

    const-string v2, "sub_content_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->U:Ljava/lang/String;

    const-string v2, "small_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->V:Ljava/lang/String;

    const-string v2, "large_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->W:Ljava/lang/String;

    const-string v2, "big_picture"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->X:Ljava/lang/String;

    const-string v2, "banner"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->L:Z

    const-string v2, "noti_big_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->Y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "f_flip_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->Q:I

    const-string v2, "f_flip_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->S:I

    const-string v2, "f_flip_anim"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->Z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "e_flip_path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->R:I

    const-string v2, "e_flip_period"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->T:I

    const-string v2, "e_flip_anim"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->a0:Ljava/util/ArrayList;

    const-string v2, "click_link"

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/marketing/l;->a0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/marketing/l;->a0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/smp/marketing/i;

    invoke-static {v2, v5}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/sdk/smp/marketing/i;->e()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6}, Lcom/samsung/android/sdk/smp/marketing/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v5, "link_uris"

    invoke-virtual {v0, v5, v1}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->b0:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    :goto_1
    const/4 v6, 0x3

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/marketing/l;->b0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/sdk/smp/marketing/l;->b0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/smp/marketing/h;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "noti_button"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "title"

    iget-object v10, v6, Lcom/samsung/android/sdk/smp/marketing/h;->a:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v4

    :goto_2
    if-ge v9, v3, :cond_5

    iget-object v10, v6, Lcom/samsung/android/sdk/smp/marketing/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    iget-object v10, v6, Lcom/samsung/android/sdk/smp/marketing/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/sdk/smp/marketing/i;

    invoke-static {v2, v9}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/samsung/android/sdk/smp/marketing/i;->e()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move v7, v4

    :goto_3
    iget-object v8, v6, Lcom/samsung/android/sdk/smp/marketing/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    iget-object v8, v6, Lcom/samsung/android/sdk/smp/marketing/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/smp/marketing/i;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/smp/marketing/i;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method public final p()Z
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/sdk/smp/marketing/g;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/l;->J:I

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/l;->K:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    const/4 v3, 0x3

    if-gt v0, v3, :cond_1

    if-eq p0, v2, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method
