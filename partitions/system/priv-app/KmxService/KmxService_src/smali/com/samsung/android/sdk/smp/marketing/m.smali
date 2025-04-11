.class public final Lcom/samsung/android/sdk/smp/marketing/m;
.super Ll9/b;
.source "SourceFile"


# instance fields
.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/m;->h:I

    invoke-direct {p0}, Ll9/b;-><init>()V

    return-void
.end method

.method public static P0(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method

.method public static S0(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/l;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "flip_f"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "flip_e"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lb9/b;->j:[Ljava/lang/String;

    invoke-static {p0, p2, v0}, Lh9/a;->s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "largeIcon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p0, p1, Lcom/samsung/android/sdk/smp/marketing/l;->V:Ljava/lang/String;

    goto :goto_3

    :cond_1
    const-string v0, "smallIcon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p0, p1, Lcom/samsung/android/sdk/smp/marketing/l;->U:Ljava/lang/String;

    goto :goto_3

    :cond_2
    if-eqz p0, :cond_4

    const-string v0, "bigPicture"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p0, p1, Lcom/samsung/android/sdk/smp/marketing/l;->W:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v0, "banner"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iput-object p0, p1, Lcom/samsung/android/sdk/smp/marketing/l;->X:Ljava/lang/String;

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_5
    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    const/16 v3, 0xa

    if-gt v2, v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lb9/b;->j:[Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lh9/a;->s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    if-eq v2, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/samsung/android/sdk/smp/marketing/l;->Y:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget-object v4, p1, Lcom/samsung/android/sdk/smp/marketing/l;->Z:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_3
    return-void

    :cond_a
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static T0(Lcom/samsung/android/sdk/smp/marketing/l;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "contentTitle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "contentText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "subContentText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ll9/b;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->N:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ll9/b;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->O:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ll9/b;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/l;->P:Ljava/lang/String;

    :goto_1
    return-void

    :cond_3
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4943751a -> :sswitch_2
        -0x1731f6ba -> :sswitch_1
        0x30f4e15f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static U0(Lcom/samsung/android/sdk/smp/marketing/n;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "body"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ll9/b;->J(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/n;->V:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_0
    const-string v0, "web"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/n;->Y:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final A0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;Lorg/json/JSONObject;)V
    .locals 8

    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/m;->h:I

    const/4 v2, 0x1

    const-string v3, "invalid userdata. "

    const-string v4, "b"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v1, "e"

    const-string v5, "f"

    invoke-super {p0, p1, p2, p3}, Ll9/b;->A0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;Lorg/json/JSONObject;)V

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/l;

    :try_start_0
    iget-object p0, p2, Lcom/samsung/android/sdk/smp/marketing/g;->d:Lorg/json/JSONObject;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->J:I

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lcom/samsung/android/sdk/smp/marketing/l;->K:I

    const-string p0, "icon"

    invoke-virtual {p3, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, p2, Lcom/samsung/android/sdk/smp/marketing/l;->L:Z

    const-string p0, "fa"

    invoke-virtual {p3, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    iget p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->K:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    const-string v6, "invalid flipping period"

    const-string v7, "fp"

    if-ne p1, v2, :cond_1

    :try_start_1
    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->R:I

    if-lez p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->T:I

    goto :goto_0

    :cond_0
    invoke-static {v4, v0, v6}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->J:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    invoke-virtual {p3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->Q:I

    if-lez p1, :cond_2

    if-eqz p0, :cond_3

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lcom/samsung/android/sdk/smp/marketing/l;->S:I

    goto :goto_1

    :cond_2
    invoke-static {v4, v0, v6}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :goto_2
    const-string v1, "bottom"

    invoke-super {p0, p1, p2, p3}, Ll9/b;->A0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;Lorg/json/JSONObject;)V

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/n;

    :try_start_2
    const-string p0, "disturb"

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-ne v2, p0, :cond_4

    move p0, v2

    goto :goto_3

    :cond_4
    move p0, p1

    :goto_3
    iput-boolean p0, p2, Lcom/samsung/android/sdk/smp/marketing/n;->M:Z

    const-string p0, "test"

    iget-object p3, p2, Lcom/samsung/android/sdk/smp/marketing/g;->b:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p2, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move p0, p1

    goto :goto_5

    :cond_6
    :goto_4
    move p0, v2

    :goto_5
    if-eqz p0, :cond_7

    iput-boolean v2, p2, Lcom/samsung/android/sdk/smp/marketing/n;->M:Z

    :cond_7
    iget-object p0, p2, Lcom/samsung/android/sdk/smp/marketing/g;->d:Lorg/json/JSONObject;

    const-string p3, "pop"

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/samsung/android/sdk/smp/marketing/n;->J:I

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    if-ne v2, p3, :cond_8

    move p3, v2

    goto :goto_6

    :cond_8
    move p3, p1

    :goto_6
    iput-boolean p3, p2, Lcom/samsung/android/sdk/smp/marketing/n;->K:Z

    const-string p3, "close"

    invoke-virtual {p0, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    if-ne v2, p3, :cond_9

    move p1, v2

    :cond_9
    iput-boolean p1, p2, Lcom/samsung/android/sdk/smp/marketing/n;->L:Z

    const-string p1, "btnalign"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p2, Lcom/samsung/android/sdk/smp/marketing/n;->S:I

    const-string p1, "color"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const p1, -0x19191a

    const p3, -0xa0a0b

    const v2, -0x50506

    const/high16 v5, -0x22000000

    if-nez p0, :cond_a

    iput v2, p2, Lcom/samsung/android/sdk/smp/marketing/n;->N:I

    iput p3, p2, Lcom/samsung/android/sdk/smp/marketing/n;->O:I

    iput v5, p2, Lcom/samsung/android/sdk/smp/marketing/n;->P:I

    iput v5, p2, Lcom/samsung/android/sdk/smp/marketing/n;->Q:I

    iput p1, p2, Lcom/samsung/android/sdk/smp/marketing/n;->R:I

    goto :goto_7

    :cond_a
    const-string v6, "bg"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/samsung/android/sdk/smp/marketing/m;->P0(ILjava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/samsung/android/sdk/smp/marketing/n;->N:I

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/samsung/android/sdk/smp/marketing/m;->P0(ILjava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/samsung/android/sdk/smp/marketing/n;->O:I

    const-string p3, "text"

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/samsung/android/sdk/smp/marketing/m;->P0(ILjava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/samsung/android/sdk/smp/marketing/n;->P:I

    const-string p3, "btntext"

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v5, p3}, Lcom/samsung/android/sdk/smp/marketing/m;->P0(ILjava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/samsung/android/sdk/smp/marketing/n;->Q:I

    const-string p3, "line"

    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/m;->P0(ILjava/lang/String;)I

    move-result p0

    iput p0, p2, Lcom/samsung/android/sdk/smp/marketing/n;->R:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_7
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final Q0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;)V
    .locals 5

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/m;->h:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p0, p2, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lv4/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/l;

    iget p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->J:I

    add-int/lit8 p1, p1, -0x1

    iget v1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->K:I

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    sget-object v3, Lp1/f;->c:[[Ljava/lang/String;

    aget-object v3, v3, p1

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-static {p0, p2, v3}, Lcom/samsung/android/sdk/smp/marketing/m;->S0(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/l;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object p1, Lp1/f;->d:[[Ljava/lang/String;

    aget-object p1, p1, v1

    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object p1, p1, v0

    invoke-static {p0, p2, p1}, Lcom/samsung/android/sdk/smp/marketing/m;->S0(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/l;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    :goto_2
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget-object p0, p2, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lv4/b;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/n;

    iget p1, p2, Lcom/samsung/android/sdk/smp/marketing/n;->J:I

    add-int/lit8 p1, p1, -0x1

    :goto_3
    sget-object v1, Lp9/d;->f:[[Ljava/lang/String;

    aget-object v1, v1, p1

    array-length v2, v1

    if-ge v0, v2, :cond_6

    aget-object v1, v1, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "popupmain"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lb9/b;->j:[Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lh9/a;->s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p2, Lcom/samsung/android/sdk/smp/marketing/n;->Z:Ljava/lang/String;

    goto :goto_4

    :cond_3
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    :cond_6
    return-void

    :cond_7
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final R0(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/g;Lorg/json/JSONObject;)V
    .locals 9

    iget p0, p0, Lcom/samsung/android/sdk/smp/marketing/m;->h:I

    const-string v0, "fail to parse resource. invalid landing page"

    const/4 v1, 0x0

    const-string v2, "b"

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p2, :cond_3

    iget-object p0, p2, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-eqz p3, :cond_3

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/l;

    :try_start_0
    const-string v3, "ticker"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/samsung/android/sdk/smp/marketing/l;->M:Ljava/lang/String;

    iget v3, p2, Lcom/samsung/android/sdk/smp/marketing/l;->J:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Lcom/samsung/android/sdk/smp/marketing/l;->K:I

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    :goto_0
    sget-object v6, Lp1/f;->a:[[Ljava/lang/String;

    aget-object v6, v6, v3

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget-object v6, v6, v5

    invoke-static {p2, p3, v6}, Lcom/samsung/android/sdk/smp/marketing/m;->T0(Lcom/samsung/android/sdk/smp/marketing/l;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v3, Lp1/f;->b:[[Ljava/lang/String;

    aget-object v3, v3, v4

    array-length v5, v3

    if-ge v1, v5, :cond_1

    aget-object v3, v3, v1

    invoke-static {p2, p3, v3}, Lcom/samsung/android/sdk/smp/marketing/m;->T0(Lcom/samsung/android/sdk/smp/marketing/l;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1, p0, p3}, Lcom/samsung/android/sdk/smp/marketing/i;->d(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v3, "1"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/smp/marketing/i;->c(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->a0:Ljava/util/ArrayList;

    invoke-static {p1, p0, p3}, Lcom/samsung/android/sdk/smp/marketing/h;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/sdk/smp/marketing/l;->b0:Ljava/util/ArrayList;

    return-void

    :cond_2
    invoke-static {v2, p0, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "fail to parse resource. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    :goto_2
    const-string p0, "2"

    const-string v3, "text"

    if-eqz p2, :cond_a

    iget-object v4, p2, Lcom/samsung/android/sdk/smp/marketing/g;->a:Ljava/lang/String;

    if-eqz p3, :cond_a

    check-cast p2, Lcom/samsung/android/sdk/smp/marketing/n;

    :try_start_1
    const-string v5, "pop"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    iget v5, p2, Lcom/samsung/android/sdk/smp/marketing/n;->J:I

    add-int/lit8 v5, v5, -0x1

    move v6, v1

    :goto_3
    sget-object v7, Lp9/d;->e:[[Ljava/lang/String;

    aget-object v7, v7, v5

    array-length v8, v7

    if-ge v6, v8, :cond_4

    aget-object v7, v7, v6

    invoke-static {p2, p3, v7}, Lcom/samsung/android/sdk/smp/marketing/m;->U0(Lcom/samsung/android/sdk/smp/marketing/n;Lorg/json/JSONObject;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-boolean v5, p2, Lcom/samsung/android/sdk/smp/marketing/n;->K:Z

    if-eqz v5, :cond_9

    const-string v5, "btn1"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_5

    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_5
    iput-object v6, p2, Lcom/samsung/android/sdk/smp/marketing/n;->W:Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/sdk/smp/marketing/i;->d(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p2, Lcom/samsung/android/sdk/smp/marketing/n;->T:Ljava/util/ArrayList;

    invoke-static {v5, p0}, Lcom/samsung/android/sdk/smp/marketing/i;->c(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "btn2"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_6

    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_6
    iput-object v3, p2, Lcom/samsung/android/sdk/smp/marketing/n;->X:Ljava/lang/String;

    invoke-static {p1, v4, p3}, Lcom/samsung/android/sdk/smp/marketing/i;->d(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/sdk/smp/marketing/n;->U:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/i;->c(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v2, v4, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_8
    invoke-static {v2, v4, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_4
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invalid resource file. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_a
    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
