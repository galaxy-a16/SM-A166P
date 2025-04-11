.class public final Lj9/b;
.super Lh9/a;
.source "SourceFile"


# static fields
.field public static i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh9/a;-><init>()V

    return-void
.end method

.method public static I(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lfc/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "type3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0c0054

    return p0

    :cond_0
    const p0, 0x7f0c0053

    return p0

    :cond_1
    const-string v0, "fail to get banner or viewflipper layout id. invalid contents type : "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "b"

    invoke-static {v0, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
.end method

.method public static J(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;ZZ)Landroid/app/PendingIntent;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get click pending intent. isButton:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v10, p4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPLink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "b"

    invoke-static {v12, v8, v0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/samsung/android/sdk/smp/marketing/f;

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;->RUN_VIA_NOTIFICATION:Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;

    invoke-direct {v13, v0}, Lcom/samsung/android/sdk/smp/marketing/f;-><init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x0

    move-object v15, v0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/high16 v6, 0xc000000

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    new-instance v4, Lcom/samsung/android/sdk/smp/marketing/i;

    invoke-direct {v4}, Lcom/samsung/android/sdk/smp/marketing/i;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    const-string v1, "redirectionUrl"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->c:Ljava/lang/String;

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->j:Ljava/lang/String;

    const-string v1, "comp"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->i:I

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->k:Ljava/lang/String;

    const-string v1, "cls"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->m:Ljava/lang/String;

    const-string v1, "extra"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->n:Landroid/os/Bundle;

    const-string v1, "appFilter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->g:Ljava/util/ArrayList;

    const-string v1, "basicReferrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->e:Ljava/util/ArrayList;

    const-string v1, "appReferrer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->f:Ljava/util/ArrayList;

    const-string v1, "referrerStr"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->h:Ljava/lang/String;

    const-string v1, "requireValidation"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/samsung/android/sdk/smp/marketing/i;->d:Z

    iget-object v0, v4, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    const-string v1, "ignore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "click intent : switch to delete intent. link type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v8, v0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v7, v8}, Lj9/b;->K(ILandroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v5, 0x1

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v4

    move-object/from16 v16, v4

    move v4, v5

    move/from16 v5, p4

    move v10, v6

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/smp/marketing/f;->c(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;ZZZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lj9/b;->i:Z

    invoke-static {v7, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v15, :cond_2

    move-object/from16 v15, v16

    :cond_2
    move/from16 v10, p4

    goto/16 :goto_0

    :cond_3
    move v10, v6

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v13, v5

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/smp/marketing/f;->c(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;ZZZ)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "landing page may not be launchable"

    invoke-static {v12, v8, v1}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v13, Lj9/b;->i:Z

    invoke-static {v7, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "fail to get click intent. nothing supported"

    invoke-static {v12, v8, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    const-string v1, "landing_page_error"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static K(ILandroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, La9/f;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "display_id"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "marketingType"

    const-string v1, "1"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0xc000000

    invoke-static {p1, p0, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static L(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 26

    move/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v1, "f_type"

    const/4 v2, -0x1

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v1, "e_type"

    invoke-virtual {v8, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v11, 0x1

    if-lt v9, v11, :cond_1

    if-gt v9, v3, :cond_1

    if-eq v10, v11, :cond_0

    if-eq v10, v5, :cond_0

    if-eq v10, v1, :cond_0

    if-eq v10, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    :goto_1
    if-eqz v1, :cond_22

    const-string v1, "mid"

    invoke-virtual {v8, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "ticker"

    invoke-virtual {v8, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {}, Lfc/e;->G()Z

    move-result v3
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_21

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3}, Li4/f;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ltz v3, :cond_20

    const-string v5, "small_icon"

    invoke-virtual {v8, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move v14, v6

    :goto_2
    if-ge v14, v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v15, "click_link"

    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x5

    goto :goto_2

    :cond_3
    :goto_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "p_link"

    invoke-virtual {v8, v4, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v4, "channel_type"

    invoke-virtual {v8, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v7, v2}, Lh9/a;->x(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v7, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v5}, Lh9/a;->o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_4

    :cond_4
    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_4
    if-ne v9, v11, :cond_5

    invoke-static {v7, v15, v8}, Lj9/b;->N(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    :cond_5
    const/4 v1, 0x2

    if-eq v10, v1, :cond_8

    const/4 v1, 0x4

    if-eq v10, v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {v7, v15, v8}, Lj9/b;->N(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string v1, "content_text"

    invoke-virtual {v8, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string v1, "sub_content_text"

    invoke-virtual {v8, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_7
    const-string v0, "b"

    const-string v1, "fail to build bigtext notification. invalid map"

    invoke-static {v0, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw v0

    :cond_8
    invoke-static {v7, v15, v8}, Lj9/b;->N(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V

    const-string v1, "content_text"

    invoke-virtual {v8, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "big_picture"

    invoke-virtual {v8, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-static {v2}, Lh9/a;->o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const-string v1, "sub_content_text"

    invoke-virtual {v8, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_9
    :goto_5
    invoke-static/range {p1 .. p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    const-string v2, "noti_group"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_a
    const-string v11, "mid"

    invoke-virtual {v8, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v6

    :goto_6
    const-string v3, "noti_button"

    const/4 v2, 0x3

    if-ge v1, v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    :goto_7
    const-string v2, "p_link"

    invoke-virtual {v8, v2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move/from16 v16, v1

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_15

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object/from16 v17, v2

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v19, v3

    const-string v3, "click_link"

    if-nez v2, :cond_d

    move-object/from16 v21, v4

    move/from16 v20, v6

    goto :goto_a

    :cond_d
    const/16 v20, 0x0

    move-object/from16 v21, v4

    move/from16 v4, v20

    move/from16 v20, v6

    :goto_9
    const/4 v6, 0x5

    if-ge v4, v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-nez v6, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_f
    :goto_a
    invoke-static/range {p1 .. p1}, Lfc/e;->r(Landroid/content/Context;)I

    move-result v2

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_10

    const/4 v6, 0x1

    move-object v3, v1

    move/from16 v4, v16

    move-object/from16 v1, p1

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move-object v2, v5

    move-object/from16 v17, v3

    move-object/from16 v16, v19

    move/from16 v3, p0

    move/from16 v19, v4

    move-object/from16 v18, v21

    move-object/from16 v4, v17

    move/from16 v21, v14

    move-object v14, v5

    move v5, v6

    move-object/from16 v24, v13

    move/from16 v13, v20

    move/from16 v6, v19

    invoke-static/range {v1 .. v6}, Lj9/b;->J(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;ZZ)Landroid/app/PendingIntent;

    move-result-object v1

    move/from16 v5, v19

    goto/16 :goto_d

    :cond_10
    move-object/from16 v24, v13

    move-object/from16 v22, v17

    move-object/from16 v23, v18

    move/from16 v13, v20

    move-object/from16 v18, v21

    move-object/from16 v17, v1

    move/from16 v21, v14

    move-object v14, v5

    move-object/from16 v25, v19

    move/from16 v19, v16

    move-object/from16 v16, v25

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v4, La9/f;

    invoke-direct {v2, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    if-eqz v13, :cond_13

    const/4 v5, 0x1

    if-eq v13, v5, :cond_12

    const/4 v5, 0x2

    if-eq v13, v5, :cond_11

    goto :goto_b

    :cond_11
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_3:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_BUTTON_3_CLICK"

    goto :goto_b

    :cond_12
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_2:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_BUTTON_2_CLICK"

    goto :goto_b

    :cond_13
    sget-object v4, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLICKED_BUTTON_1:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string v1, "com.samsung.android.sdk.smp.MARKETING_BUTTON_1_CLICK"

    :goto_b
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v11, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v5, v19

    move-object/from16 v1, v22

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "feedback_event"

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->value()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "displayid"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, 0x0

    :goto_c
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_14

    invoke-static {v3, v4}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v1

    move-object/from16 v1, v17

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v19

    move-object/from16 v1, v22

    goto :goto_c

    :cond_14
    move-object/from16 v22, v1

    const/high16 v1, 0xc000000

    invoke-static {v7, v0, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_d
    new-instance v2, Landroid/app/Notification$Action$Builder;

    const/4 v3, 0x0

    move-object/from16 v4, v23

    invoke-direct {v2, v3, v4, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v6, v13, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move-object/from16 v2, v22

    move-object/from16 v13, v24

    move/from16 v16, v5

    move-object v5, v14

    move/from16 v14, v21

    goto/16 :goto_8

    :cond_15
    move-object/from16 v24, v13

    move/from16 v21, v14

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v9, v1, :cond_17

    const/4 v1, 0x3

    if-eq v9, v1, :cond_16

    const/4 v1, 0x0

    move-object v3, v2

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    invoke-static {v7, v8, v1}, Lj9/b;->M(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object v3

    goto :goto_e

    :cond_17
    const/4 v1, 0x0

    const-string v3, "banner"

    invoke-virtual {v8, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-static {v3}, Lh9/a;->o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lj9/b;->I(Landroid/content/Context;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v5, 0x7f090062

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move-object v3, v4

    :goto_e
    const/4 v4, 0x5

    if-ne v10, v4, :cond_18

    const/4 v2, 0x1

    invoke-static {v7, v8, v2}, Lj9/b;->M(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    :cond_18
    if-eqz v3, :cond_19

    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_19
    if-eqz v2, :cond_1a

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_1a
    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lfc/e;->r(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_1b

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    move/from16 v3, p0

    move-object/from16 v4, v24

    move/from16 v6, v21

    invoke-static/range {v1 .. v6}, Lj9/b;->J(Landroid/content/Context;Ljava/lang/String;ILjava/util/ArrayList;ZZ)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_10

    :cond_1b
    new-instance v2, Landroid/content/Intent;

    const-class v3, La9/f;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.samsung.android.sdk.smp.MARKETING_CLICK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mid"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "p_link"

    move/from16 v4, v21

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_f
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1c

    const-string v3, "click_link"

    invoke-static {v3, v1}, Landroidx/activity/b;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v24

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    const/4 v1, 0x1

    sput-boolean v1, Lj9/b;->i:Z

    const/high16 v1, 0xc000000

    invoke-static {v7, v0, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_10
    iput-object v1, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v7, v12}, Lj9/b;->K(ILandroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v8, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object v8

    :cond_1d
    const-string v0, "b"

    const-string v1, "fail to make notification. banner path null"

    invoke-static {v0, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1e
    const-string v0, "b"

    const-string v1, "fail to build bigpicture notification. invalid map"

    invoke-static {v0, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw v0

    :cond_1f
    const-string v0, "b"

    const-string v1, "fail to get notification. invalid data"

    invoke-static {v0, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw v0

    :cond_20
    :try_start_3
    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "a"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;-><init>()V

    throw v0

    :cond_21
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;

    const-string v1, "The current country code is not supported on this sdk. should check the sdk that you are importing."

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/samsung/android/sdk/smp/SmpException$IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "b"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail to get notification. IllegalStateException. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw v0

    :cond_22
    const-string v0, "b"

    const-string v1, "fail to get notification. not supported type"

    invoke-static {v0, v1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw v0
.end method

.method public static M(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/widget/RemoteViews;
    .locals 7

    if-eqz p2, :cond_0

    const-string v0, "e_flip_path"

    goto :goto_0

    :cond_0
    const-string v0, "f_flip_path"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "b"

    if-eqz v0, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lh9/a;->o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "e_flip_period"

    goto :goto_2

    :cond_2
    const-string v0, "f_flip_period"

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    if-eqz p2, :cond_3

    const-string v3, "e_flip_anim"

    goto :goto_3

    :cond_3
    const-string v3, "f_flip_anim"

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const p1, 0x7f09027d

    goto :goto_4

    :cond_4
    const p1, 0x7f090280

    goto :goto_4

    :cond_5
    const p1, 0x7f09027f

    goto :goto_4

    :cond_6
    const p1, 0x7f09027e

    :goto_4
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0055

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, p1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string v4, "setFlipInterval"

    invoke-virtual {v3, p1, v4, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_8

    invoke-static {p0}, Lfc/e;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "type3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const v5, 0x7f0c001c

    goto :goto_6

    :cond_7
    const-string p0, "fail to get expanded viewflipper layout id. invalid contents type : "

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0

    :cond_8
    invoke-static {p0}, Lj9/b;->I(Landroid/content/Context;)I

    move-result v5

    :goto_6
    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_9

    const v5, 0x7f0900e7

    goto :goto_7

    :cond_9
    const v5, 0x7f090062

    :goto_7
    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v3, p1, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    goto :goto_5

    :cond_a
    return-object v3

    :cond_b
    const-string p0, "fail to make notification. invalid flipper period, images"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$ImageDecodingException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$ImageDecodingException;-><init>()V

    throw p0

    :cond_c
    const-string p0, "fail to make notification. flipper paths null"

    invoke-static {v1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static N(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "content_title"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_text"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "b"

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string v3, "large_icon"

    invoke-virtual {p2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lh9/a;->o(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, p0, v3}, Li4/f;->t(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p0, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v3

    :goto_0
    const-string v2, "noti_big_icon"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException;-><init>()V

    throw p0

    :cond_3
    const-string p0, "fail to build basic notification. invalid params"

    invoke-static {v2, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static O(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 7

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Landroid/app/Notification;->when:J

    const/16 v0, 0x10

    iput v0, p1, Landroid/app/Notification;->flags:I

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "noti_color"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Le9/b;->d(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit v0

    if-eqz v1, :cond_0

    iput v1, p1, Landroid/app/Notification;->color:I

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x2

    iput v0, p1, Landroid/app/Notification;->priority:I

    if-eqz p0, :cond_5

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_1
    const-string v1, "noti_vibrate_enabled"

    invoke-virtual {p0, v1}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit p0

    if-eqz v1, :cond_3

    monitor-enter p0

    :try_start_2
    const-string v1, "noti_vibrate_pattern"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v3, v1, [J

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v3, v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    monitor-exit p0

    if-nez v3, :cond_2

    iget v1, p1, Landroid/app/Notification;->defaults:I

    or-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_1

    :cond_2
    iput-object v3, p1, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    monitor-enter p0

    :try_start_5
    const-string v0, "noti_sound_enabled"

    invoke-virtual {p0, v0}, Le9/b;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    if-eqz v0, :cond_5

    monitor-enter p0

    :try_start_6
    const-string v0, "noti_sound_uri"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 p0, p0, 0x1

    iput p0, p1, Landroid/app/Notification;->defaults:I

    goto :goto_2

    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_2
    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final k(Landroid/content/Context;I)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "clear notification in the noti bar. displayId : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "b"

    invoke-static {v0, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q(Landroid/content/Context;Landroid/os/Bundle;Lj9/a;)V
    .locals 7

    const-string p0, "b"

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p2, "fail to display. data null"

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lh9/a;->B(Landroid/os/Bundle;)V

    const-string v1, "displayid"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    const-string p2, "fail to display. invalid displayid"

    :goto_0
    invoke-static {p0, p2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p3, p1, p0, v0}, Lj9/a;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {v1, p1, p2}, Lj9/b;->L(ILandroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {p1, v2}, Lj9/b;->O(Landroid/content/Context;Landroid/app/Notification;)V

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-boolean v1, Lj9/b;->i:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v1, "landing_page_may_not_launchable"

    :goto_1
    invoke-virtual {p3, p1, v1}, Lj9/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "content_title"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "ticker"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v4, v1

    const-string v1, "content_text"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "link_uris"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v2, p3, Lj9/a;->a:Ljava/lang/String;

    iget-boolean v3, p3, Lj9/a;->c:Z

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lh9/a;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$IllegalPushChannelException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$AppIconNotfoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_1
    move-exception p0

    sget-object p2, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p2, p0}, Lj9/a;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    goto :goto_3

    :catch_3
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string p2, "app_icon_not_found"

    goto :goto_2

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    const-string p2, "img_decode_fail"

    :goto_2
    invoke-virtual {p3, p1, p0, p2}, Lj9/a;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    sget-object p0, Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;->PUSH_CHANNEL_NOT_CREATED:Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;

    :goto_3
    invoke-virtual {p3, p1, p0, v0}, Lj9/a;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/common/constants/FeedbackEvent;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
