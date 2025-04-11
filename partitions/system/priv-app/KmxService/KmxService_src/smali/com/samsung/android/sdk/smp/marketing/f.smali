.class public final Lcom/samsung/android/sdk/smp/marketing/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lcom/samsung/android/sdk/smp/marketing/e;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/smp/marketing/LandingIntentGenerator$RunType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p1, Lm1/e;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lm1/e;-><init>(Lm1/d;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invalid runtype : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "f"

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p1, Lt6/a;

    invoke-direct {p1, p0}, Lt6/a;-><init>(Lcom/samsung/android/sdk/smp/marketing/f;)V

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/f;->a:Lcom/samsung/android/sdk/smp/marketing/e;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;)Landroid/net/Uri;
    .locals 2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    iget-object p1, p1, Lcom/samsung/android/sdk/smp/marketing/i;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "f"

    const-string v1, "append referrer to url"

    invoke-static {v0, v1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "smpReferrer"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/f;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "smpPK"

    invoke-virtual {p1, p2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    invoke-virtual {p0}, Lf9/c;->L()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Landroidx/activity/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Li4/g;->d:I

    :try_start_0
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v3, p0, v2

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error while hashing. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "g"

    invoke-static {p1, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "smpPK:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "f"

    invoke-static {v0, p1}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;ZZZ)Landroid/content/Intent;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p6

    const-string v11, "f"

    if-nez v9, :cond_0

    const-string v0, "fail to get landing intent. link is null"

    goto/16 :goto_b

    :cond_0
    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    const-string v2, "app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "smpPK"

    const-string v12, "put smpPK to extra"

    const-string v13, "smpReferrer"

    const-string v14, "append referrer to extra"

    iget-object v2, v0, Lcom/samsung/android/sdk/smp/marketing/f;->a:Lcom/samsung/android/sdk/smp/marketing/e;

    if-eqz v1, :cond_6

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "fail to get landing intent(type:app). pkg null"

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, v9, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    if-nez v15, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to get landing intent(type:app) : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v11, v8, v0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v2, v15}, Lcom/samsung/android/sdk/smp/marketing/e;->e(Landroid/content/Intent;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/smp/marketing/f;->a:Lcom/samsung/android/sdk/smp/marketing/e;

    iget-object v4, v9, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/smp/marketing/e;->h(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    iget-object v0, v9, Lcom/samsung/android/sdk/smp/marketing/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v11, v14}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    if-eqz v10, :cond_4

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/sdk/smp/marketing/f;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v11, v12}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    const-string v0, "landing intent : app"

    invoke-static {v11, v8, v0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v15

    :cond_6
    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, " is not launchable"

    const-string v5, "android.intent.action.VIEW"

    if-eqz v1, :cond_e

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "fail to get landing intent(type:url). url null"

    invoke-static {v11, v8, v0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-interface {v2, v12}, Lcom/samsung/android/sdk/smp/marketing/e;->e(Landroid/content/Intent;)V

    invoke-static {v1, v9}, Lcom/samsung/android/sdk/smp/marketing/f;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v7, v8, v2, v10}, Lcom/samsung/android/sdk/smp/marketing/f;->b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :cond_9
    :goto_3
    if-nez v3, :cond_b

    if-eqz p4, :cond_a

    invoke-static {v7, v12}, Lcom/samsung/android/sdk/smp/marketing/f;->e(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail to get landing intent(type:url). "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v8, v1}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_4

    :cond_a
    iget-object v1, v0, Lcom/samsung/android/sdk/smp/marketing/f;->a:Lcom/samsung/android/sdk/smp/marketing/e;

    iget-object v5, v9, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v12

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/sdk/smp/marketing/e;->h(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    if-nez v12, :cond_c

    const-string v0, "fail to get landing intent(type:url). it is not able to launch"

    invoke-static {v11, v0}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    :cond_c
    iget-object v0, v0, Lcom/samsung/android/sdk/smp/marketing/f;->a:Lcom/samsung/android/sdk/smp/marketing/e;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/smp/marketing/e;->b(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "landing intent : url (original)"

    invoke-static {v11, v8, v0}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const-string v1, "landing intent : url (redirect)"

    invoke-static {v11, v8, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v0

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "landing uri : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v8, v0}, Lj3/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    :goto_7
    return-object v0

    :cond_e
    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    const-string v15, "intent"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "fail to get landing intent(type:intent). pkg null"

    goto :goto_8

    :cond_f
    iget v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->i:I

    if-eq v1, v3, :cond_10

    const-string v0, "fail to get landing intent(type:intent). invalid component"

    goto :goto_8

    :cond_10
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v15, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->j:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v9, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    iget-object v5, v9, Lcom/samsung/android/sdk/smp/marketing/i;->m:Ljava/lang/String;

    invoke-direct {v1, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_13
    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->n:Landroid/os/Bundle;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->n:Landroid/os/Bundle;

    invoke-virtual {v15, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_14
    invoke-interface {v2, v15}, Lcom/samsung/android/sdk/smp/marketing/e;->e(Landroid/content/Intent;)V

    if-eqz p4, :cond_15

    invoke-static {v7, v15}, Lcom/samsung/android/sdk/smp/marketing/f;->e(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to get landing intent(type:intent). "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->l:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v11, v8, v0}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_a

    :cond_15
    const-string v1, "landing intent : intent"

    invoke-static {v11, v8, v1}, Lj3/f;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/sdk/smp/marketing/f;->a:Lcom/samsung/android/sdk/smp/marketing/e;

    iget-object v4, v9, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/sdk/smp/marketing/e;->h(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    iget-object v0, v9, Lcom/samsung/android/sdk/smp/marketing/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v11, v14}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    if-eqz v10, :cond_17

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/sdk/smp/marketing/f;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {v11, v12}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_18
    :goto_a
    return-object v15

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail to get landing intent. invalid type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/samsung/android/sdk/smp/marketing/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-static {v11, v8, v0}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
