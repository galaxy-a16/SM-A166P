.class public final Landroidx/fragment/app/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/c;
.implements Lk/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/p0;->a:I

    iput-object p1, p0, Landroidx/fragment/app/p0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Landroidx/fragment/app/p0;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    check-cast p1, Landroidx/activity/result/b;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->b(Landroidx/activity/result/b;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/p0;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/y0;

    iget-object v2, v1, Landroidx/fragment/app/y0;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/v0;

    if-nez v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No permissions were requested for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-object p0, v1, Landroidx/fragment/app/y0;->c:Landroidx/fragment/app/h1;

    iget-object v1, v2, Landroidx/fragment/app/v0;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/h1;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Permission request result delivered for unknown Fragment "

    invoke-static {p0, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget v1, v2, Landroidx/fragment/app/v0;->b:I

    invoke-virtual {p0, v1, v0, p1}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :goto_3
    return-void

    :goto_4
    check-cast p1, Landroidx/activity/result/b;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/p0;->b(Landroidx/activity/result/b;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Landroidx/fragment/app/p0;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/k0;

    instance-of v0, p1, Landroidx/activity/result/k;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/activity/result/k;

    invoke-interface {p1}, Landroidx/activity/result/k;->getActivityResultRegistry()Landroidx/activity/result/j;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/g0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getActivityResultRegistry()Landroidx/activity/result/j;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b(Landroidx/activity/result/b;)V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/p0;->a:I

    const-string v1, "FragmentManager"

    iget-object v2, p0, Landroidx/fragment/app/p0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast v2, Landroidx/fragment/app/y0;

    iget-object v0, v2, Landroidx/fragment/app/y0;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v0;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No Activities were started for result for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, v2, Landroidx/fragment/app/y0;->c:Landroidx/fragment/app/h1;

    iget-object v2, v0, Landroidx/fragment/app/v0;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/h1;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "Activity result delivered for unknown Fragment "

    invoke-static {p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget v1, p1, Landroidx/activity/result/b;->a:I

    iget v0, v0, Landroidx/fragment/app/v0;->b:I

    iget-object p1, p1, Landroidx/activity/result/b;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void

    :goto_2
    check-cast v2, Landroidx/fragment/app/y0;

    iget-object v0, v2, Landroidx/fragment/app/y0;->D:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/v0;

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "No IntentSenders were started for "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    iget-object p0, v2, Landroidx/fragment/app/y0;->c:Landroidx/fragment/app/h1;

    iget-object v2, v0, Landroidx/fragment/app/v0;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/h1;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "Intent Sender result delivered for unknown Fragment "

    invoke-static {p0, v2}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    iget v1, p1, Landroidx/activity/result/b;->a:I

    iget v0, v0, Landroidx/fragment/app/v0;->b:I

    iget-object p1, p1, Landroidx/activity/result/b;->b:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
