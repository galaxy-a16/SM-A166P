.class public final Lcom/samsung/android/sdk/smp/marketing/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/ArrayList;

.field public g:Ljava/util/ArrayList;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/i;

    iget-object v3, v0, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    const-string v4, "app"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "url"

    iget-object v4, v0, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_2

    :cond_2
    const-string v3, "intent"

    iget-object v4, v0, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v0, v0, Lcom/samsung/android/sdk/smp/marketing/i;->i:I

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_4
    const-string v2, "2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ignore"

    iget-object v0, v0, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    return v1

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v7, p1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "action"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_10

    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v14, Lcom/samsung/android/sdk/smp/marketing/i;

    invoke-direct {v14}, Lcom/samsung/android/sdk/smp/marketing/i;-><init>()V

    const-string v0, "type"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    const-string v1, "pkg"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    const-string v2, "redirectionUrl"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/samsung/android/sdk/smp/marketing/i;->c:Ljava/lang/String;

    const-string v2, "referrer"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v15, "data"

    const/4 v6, 0x1

    if-nez v2, :cond_0

    move-object/from16 v16, v10

    move/from16 v17, v12

    move v12, v6

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const-string v5, "i"

    if-eqz v4, :cond_f

    const-string v4, "requireValidation"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v14, Lcom/samsung/android/sdk/smp/marketing/i;->d:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v14, Lcom/samsung/android/sdk/smp/marketing/i;->f:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v14, Lcom/samsung/android/sdk/smp/marketing/i;->e:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v14, Lcom/samsung/android/sdk/smp/marketing/i;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v6, "key"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "appFilter"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v14, Lcom/samsung/android/sdk/smp/marketing/i;->g:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    const-string v6, "basicReferrer"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v14, Lcom/samsung/android/sdk/smp/marketing/i;->e:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    const-string v6, "appReferrer"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v14, Lcom/samsung/android/sdk/smp/marketing/i;->f:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "parse. not supported referrer type : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v14, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    xor-int/lit8 v11, v0, 0x1

    const-string v2, ""

    iget-object v3, v14, Lcom/samsung/android/sdk/smp/marketing/i;->e:Ljava/util/ArrayList;

    const-string v4, "basicReferrer"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v16, v10

    move-object v10, v5

    move-object/from16 v5, p1

    move/from16 v17, v12

    move v12, v6

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/smp/marketing/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/samsung/android/sdk/smp/marketing/i;->f:Ljava/util/ArrayList;

    const-string v4, "appReferrer"

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/smp/marketing/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/samsung/android/sdk/smp/marketing/i;->g:Ljava/util/ArrayList;

    const-string v4, "appFilter"

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/smp/marketing/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "referrer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v7, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v14, Lcom/samsung/android/sdk/smp/marketing/i;->h:Ljava/lang/String;

    :goto_4
    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/sdk/smp/marketing/i;->j:Ljava/lang/String;

    const-string v0, "comp"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v14, Lcom/samsung/android/sdk/smp/marketing/i;->i:I

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/sdk/smp/marketing/i;->k:Ljava/lang/String;

    const-string v0, "cls"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/samsung/android/sdk/smp/marketing/i;->m:Ljava/lang/String;

    const-string v0, "extra"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const-string v10, "Invalid JSONArray"

    const/4 v11, 0x2

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    double-to-float v3, v10

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_a

    :pswitch_2
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v10

    invoke-virtual {v1, v4, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_a

    :pswitch_3
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    :goto_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_5

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_5
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_a

    :cond_6
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v10}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    move v10, v5

    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_7

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_8
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v10}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_6
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v1, v4, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_a

    :pswitch_7
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v10, v5

    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_9

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_a

    :cond_a
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v10}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    move v10, v5

    :goto_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    aput v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {v1, v4, v6}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_a

    :cond_c
    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, v10}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_a

    :pswitch_a
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_d
    const/4 v5, 0x0

    goto :goto_b

    :cond_e
    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_b
    iput-object v1, v14, Lcom/samsung/android/sdk/smp/marketing/i;->n:Landroid/os/Bundle;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v17, 0x1

    move-object/from16 v10, v16

    goto/16 :goto_0

    :cond_f
    move-object v10, v5

    const-string v0, "fail to parse resource. no referrer data"

    invoke-static {v10, v7, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Invalid JSONArray. no referrer data"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-object v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    const-string v0, "="

    if-eqz p6, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v4, v0

    const-string v0, "|"

    if-eqz p6, :cond_2

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v5, v0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v7, p2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    const/4 v0, 0x0

    const/4 v8, -0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "basicReferrer"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    const-string v9, "appFilter"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "appReferrer"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string v8, "mid"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v0, v3

    goto/16 :goto_4

    :cond_6
    const-string v8, "appVersion"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget v8, Lfc/e;->a:I

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v1, v8}, Li4/f;->u(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v0, ""

    goto :goto_4

    :cond_7
    const-string v0, "i"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "not supported referrer type:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    :try_start_1
    const-string v0, "getAppFilterData"

    invoke-static {v1, v0}, Lva/n;->H(Landroid/content/Context;Ljava/lang/String;)Lc9/b;

    move-result-object v16

    monitor-enter v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v14, "get app filter error."

    const-string v9, "appfilter"

    const-string v10, "value"

    const-string v11, "key=?"

    const-string v13, "value"

    move-object/from16 v8, v16

    move-object v12, v15

    invoke-virtual/range {v8 .. v14}, Lc9/b;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v16

    invoke-virtual/range {v16 .. v16}, Lc9/b;->c()V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v16

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    const-string v8, "i"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "get app filter error. "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    :try_start_4
    invoke-static {v1, v15}, Ll9/b;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    const-string v8, "i"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "get app referrer error. "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v3, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/samsung/android/sdk/smp/marketing/i;->d:Z

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const-string v0, "i"

    const-string v1, "fail to parse resource. invalid referrer"

    invoke-static {v0, v3, v1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidReferrerException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidReferrerException;-><init>()V

    throw v0

    :cond_9
    move-object/from16 v8, p0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {v7, v5}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_b
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x182a960 -> :sswitch_2
        0x429954f9 -> :sswitch_1
        0x7c93a66d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/i;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/i;->k:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x468ec964 -> :sswitch_2
        0x17a21 -> :sswitch_1
        0x1c56f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "redirectionUrl"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkg"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "comp"

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cls"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->n:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "requireValidation"

    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "referrerStr"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appFilter"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "basicReferrer"

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "appReferrer"

    iget-object p0, p0, Lcom/samsung/android/sdk/smp/marketing/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
