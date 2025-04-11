.class public abstract Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context; = null

.field public static b:Ljava/lang/Boolean; = null

.field public static final c:Lcom/google/gson/internal/e;

.field public static final d:Lcom/google/gson/internal/e;

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I

.field public static final o:[Ljava/lang/String;

.field public static final p:Lr/i;

.field public static final q:Lr/i;

.field public static r:I = -0x1


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/gson/internal/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lh3/a;->c:Lcom/google/gson/internal/e;

    new-instance v0, Lcom/google/gson/internal/e;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/gson/internal/e;-><init>(I)V

    sput-object v0, Lh3/a;->d:Lcom/google/gson/internal/e;

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lh3/a;->e:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lh3/a;->f:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lh3/a;->g:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lh3/a;->h:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x1010199

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lh3/a;->i:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lh3/a;->j:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v1, Lh3/a;->k:[I

    new-array v1, v0, [I

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v1, Lh3/a;->l:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    sput-object v1, Lh3/a;->m:[I

    new-array v0, v0, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Lh3/a;->n:[I

    const-string v0, "decelerate"

    const-string v1, "linear"

    const-string v2, "standard"

    const-string v3, "accelerate"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh3/a;->o:[Ljava/lang/String;

    new-instance v0, Lr/i;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lr/i;-><init>(I)V

    sput-object v0, Lh3/a;->p:Lr/i;

    new-instance v0, Lr/i;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lr/i;-><init>(I)V

    sput-object v0, Lh3/a;->q:Lr/i;

    return-void

    nop

    :array_0
    .array-data 4
        0x1010003
        0x1010121
        0x1010155
        0x1010159
        0x101031f
        0x10103ea
        0x10103fb
        0x1010402
        0x1010403
    .end array-data

    :array_1
    .array-data 4
        0x1010003
        0x10101b5
        0x10101b6
        0x1010324
        0x1010325
        0x1010326
        0x101045a
        0x101045b
    .end array-data

    :array_2
    .array-data 4
        0x1010003
        0x1010404
        0x1010405
        0x1010406
        0x1010407
        0x1010408
        0x1010409
        0x101040a
        0x101040b
        0x101040c
        0x101040d
        0x10104cb
        0x10104cc
        0x101051e
    .end array-data

    :array_3
    .array-data 4
        0x1010003
        0x1010405
        0x101051e
    .end array-data

    :array_4
    .array-data 4
        0x1010003
        0x10101cd
    .end array-data

    :array_5
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data
.end method

.method public static A(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "scpm.token.store"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "%s_token"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "FirebaseMessaging"

    :try_start_0
    invoke-static {}, Lv4/g;->c()Lv4/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "google.c.a.c_id"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "_nmid"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "google.c.a.c_l"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "_nmn"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "google.c.a.m_l"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "label"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "google.c.a.m_c"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "message_channel"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "from"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const-string v4, "/topics/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_6

    const-string v4, "_nt"

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "google.c.a.ts"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    :try_start_1
    const-string v4, "_nmt"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "Error while parsing timestamp in GCM event"

    invoke-static {v0, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    const-string v2, "google.c.a.udt"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_8
    if-eqz v3, :cond_9

    :try_start_2
    const-string v2, "_ndt"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "Error while parsing use_device_time in GCM event"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_2
    invoke-static {p1}, Ld/s0;->u(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "display"

    goto :goto_3

    :cond_a
    const-string p1, "data"

    :goto_3
    const-string v2, "_nr"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "_nf"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    const-string v2, "_nmc"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 p1, 0x3

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Logging to scion event="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scionPayload="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Lv4/g;->c()Lv4/g;

    move-result-object p1

    invoke-virtual {p1}, Lv4/g;->a()V

    iget-object p1, p1, Lv4/g;->d:La5/i;

    const-class v2, Lx4/a;

    invoke-interface {p1, v2}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx4/a;

    if-eqz p1, :cond_e

    check-cast p1, Lx4/b;

    invoke-virtual {p1, p0, v1}, Lx4/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_e
    const-string p0, "Unable to log event: analytics library is missing"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :catch_2
    const-string p0, "Default FirebaseApp has not been initialized. Skip logging event to GA."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static C(JJ)J
    .locals 6

    mul-long v0, p0, p2

    or-long v2, p0, p2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    div-long p0, v0, p0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static D(JJ)J
    .locals 6

    mul-long v0, p0, p2

    or-long v2, p0, p2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    div-long p0, v0, p0

    cmp-long p0, p0, p2

    if-eqz p0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static E(Lf6/j;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lf6/j;->e()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static F(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)Lv/e;
    .locals 23

    move-object/from16 v0, p1

    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_f

    const/4 v1, 0x0

    const-string v4, "font-family"

    move-object/from16 v5, p0

    invoke-interface {v5, v3, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    sget-object v6, Ls/a;->b:[I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    invoke-virtual {v4, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    const/4 v14, 0x3

    const/16 v15, 0x1f4

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    const/4 v1, 0x6

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    :goto_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v14, :cond_1

    invoke-static/range {p0 .. p0}, Lh3/a;->U(Landroid/content/res/XmlResourceParser;)V

    goto :goto_1

    :cond_1
    invoke-static {v0, v12}, Lh3/a;->K(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lv/h;

    new-instance v2, Landroidx/appcompat/widget/u;

    invoke-direct {v2, v7, v9, v11, v0}, Landroidx/appcompat/widget/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, v2, v13, v15, v8}, Lv/h;-><init>(Landroidx/appcompat/widget/u;IILjava/lang/String;)V

    goto/16 :goto_b

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v14, :cond_c

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-eq v7, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "font"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    sget-object v8, Ls/a;->c:[I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    move v8, v2

    :goto_3
    const/16 v9, 0x190

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v1

    goto :goto_4

    :cond_5
    move v8, v3

    :goto_4
    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-ne v2, v8, :cond_6

    move/from16 v22, v2

    goto :goto_5

    :cond_6
    move/from16 v22, v6

    :goto_5
    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    move v8, v14

    :goto_6
    const/4 v9, 0x7

    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    const/4 v9, 0x4

    :goto_7
    invoke-virtual {v7, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v10

    goto :goto_8

    :cond_9
    move v8, v6

    :goto_8
    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :goto_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v14, :cond_a

    invoke-static/range {p0 .. p0}, Lh3/a;->U(Landroid/content/res/XmlResourceParser;)V

    goto :goto_9

    :cond_a
    new-instance v7, Lv/g;

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v22}, Lv/g;-><init>(IIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    invoke-static/range {p0 .. p0}, Lh3/a;->U(Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    new-instance v1, Lv/f;

    new-array v0, v6, [Lv/g;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv/g;

    invoke-direct {v1, v0}, Lv/f;-><init>([Lv/g;)V

    goto :goto_b

    :cond_e
    invoke-static/range {p0 .. p0}, Lh3/a;->U(Landroid/content/res/XmlResourceParser;)V

    :goto_a
    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static G(Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 8

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    sub-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "More produced than requested: "

    invoke-static {v7, v2, v3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    move-wide v2, v4

    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static H(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 8

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    sub-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "More produced than requested: "

    invoke-static {v7, v2, v3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    move-wide v2, v4

    :cond_2
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public static I(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 8

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-wide v2

    :cond_2
    sub-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "More produced than requested: "

    invoke-static {v7, v2, v3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lv4/b;->onError(Ljava/lang/Throwable;)V

    move-wide v2, v4

    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public static J(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 8

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-wide v2

    :cond_2
    sub-long v2, v0, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "More produced than requested: "

    invoke-static {v7, v2, v3}, Landroidx/activity/b;->k(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lv4/b;->Q(Ljava/lang/Throwable;)V

    move-wide v2, v4

    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v2
.end method

.method public static K(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 8

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lv/d;->a(Landroid/content/res/TypedArray;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move p1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_6

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    invoke-static {v7, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p0

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, p0, v4

    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public static L(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static final M(Landroid/view/View;Landroidx/savedstate/f;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f09027b

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static N(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Integer;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IllegalArgumentException"

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IllegalAccessException"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SeslBaseReflector"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static O(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-static {p0, p1}, Lx/b;->g(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public static P(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-static {p0, p1}, Lx/b;->h(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static Q(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-static {p0, p1}, Lx/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static R([I)Z
    .locals 8

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    aget v6, p0, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    const v7, 0x101009c

    if-ne v6, v7, :cond_1

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_1
    const v7, 0x10100a7

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const v7, 0x1010367

    if-ne v6, v7, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    move v1, v5

    :cond_5
    return v1
.end method

.method public static S(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public static T(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "google.c.a.e"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static U(Landroid/content/res/XmlResourceParser;)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-lez v0, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final V(Lvb/b;Lkotlin/coroutines/d;)V
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Ll9/b;->R(Lvb/b;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    sget-object v0, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lkotlinx/coroutines/internal/t;->c(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final W(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;Lvb/b;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Ll9/b;->S(Lvb/c;Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    invoke-static {p0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    sget-object p1, Lkotlin/s;->a:Lkotlin/s;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1, p0}, Lkotlinx/coroutines/internal/t;->c(Lvb/b;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lkotlin/h;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method

.method public static X(Landroid/content/Context;Ls9/a;Landroidx/work/impl/x;Lu9/a;Ls9/d;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Build policy client, trid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Ls9/a;->a:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ls9/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lv4/b;->v(Ljava/lang/String;)V

    const-string v0, "SamsungAnalyticsPrefs"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lo2/i;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->GET_POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "pkn"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p3, Lu9/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v4, "dm"

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p3, Lu9/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p3, Lu9/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string v4, "mcc"

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p3, Lu9/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p3, Lu9/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p3, "mnc"

    invoke-virtual {v3, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p1, Ls9/a;->c:Ljava/lang/String;

    const-string p3, "uv"

    invoke-virtual {v3, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sv"

    const-string p3, "6.05.069"

    invoke-virtual {v3, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Ls9/a;->a:Ljava/lang/String;

    const-string p3, "tid"

    invoke-virtual {v3, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p3, "ts"

    invoke-virtual {v3, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Ls9/a;->a:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lca/a;->a:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp9/d;->l0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "hc"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ro.csc.sales_code"

    invoke-static {p0}, Lh3/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "csc"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p0, "ro.csc.countryiso_code"

    invoke-static {p0}, Lh3/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "cc"

    invoke-virtual {v3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {v1, v2, v3, v0, p4}, Lo2/i;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;Ljava/util/HashMap;Landroid/content/SharedPreferences;Ls9/d;)V

    invoke-virtual {p2, v1}, Landroidx/work/impl/x;->d(Lab/a;)V

    return-void
.end method

.method public static Y(Landroid/content/Context;II)V
    .locals 4

    const-string v0, "SamsungAnalyticsPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    const-string p0, "wifi_used"

    invoke-interface {v2, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/2addr p1, p2

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "data_used"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    add-int/2addr p0, p2

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static final Z(Lkotlin/coroutines/i;Ljava/lang/Object;Ljava/lang/Object;Lvb/c;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/b0;->c(Lkotlin/coroutines/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_0
    new-instance v0, Lkotlinx/coroutines/flow/internal/u;

    invoke-direct {v0, p4, p0}, Lkotlinx/coroutines/flow/internal/u;-><init>(Lkotlin/coroutines/d;Lkotlin/coroutines/i;)V

    const/4 v1, 0x2

    invoke-static {v1, p3}, Li4/g;->g(ILjava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Lvb/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p1, p0, :cond_0

    const-string p0, "frame"

    invoke-static {p4, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/b0;->a(Lkotlin/coroutines/i;Ljava/lang/Object;)V

    throw p1
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    invoke-static {v0, v1, p1, p2}, Lh3/a;->e(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public static final a0(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    invoke-interface {p0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/i;

    move-result-object v0

    invoke-static {v0}, Lp9/d;->H(Lkotlin/coroutines/i;)V

    invoke-static {p0}, Ll9/b;->k0(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p0

    instance-of v1, p0, Lkotlinx/coroutines/internal/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p0, Lkotlinx/coroutines/internal/e;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    sget-object v1, Lkotlin/s;->a:Lkotlin/s;

    if-nez p0, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v3, p0, Lkotlinx/coroutines/internal/e;->d:Lkotlinx/coroutines/t;

    invoke-virtual {v3, v0}, Lkotlinx/coroutines/t;->x(Lkotlin/coroutines/i;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iput-object v1, p0, Lkotlinx/coroutines/internal/e;->f:Ljava/lang/Object;

    iput v5, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {v3, v0, p0}, Lkotlinx/coroutines/t;->t(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_2
    new-instance v4, Lkotlinx/coroutines/u1;

    invoke-direct {v4}, Lkotlinx/coroutines/u1;-><init>()V

    invoke-interface {v0, v4}, Lkotlin/coroutines/i;->plus(Lkotlin/coroutines/i;)Lkotlin/coroutines/i;

    move-result-object v0

    iput-object v1, p0, Lkotlinx/coroutines/internal/e;->f:Ljava/lang/Object;

    iput v5, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {v3, v0, p0}, Lkotlinx/coroutines/t;->t(Lkotlin/coroutines/i;Ljava/lang/Runnable;)V

    iget-boolean v0, v4, Lkotlinx/coroutines/u1;->b:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lkotlinx/coroutines/p1;->a()Lkotlinx/coroutines/r0;

    move-result-object v0

    iget-object v3, v0, Lkotlinx/coroutines/r0;->e:Lj0/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget v6, v3, Lj0/b;->a:I

    iget v3, v3, Lj0/b;->b:I

    if-ne v6, v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lkotlinx/coroutines/r0;->N()Z

    move-result v3

    if-eqz v3, :cond_6

    iput-object v1, p0, Lkotlinx/coroutines/internal/e;->f:Ljava/lang/Object;

    iput v5, p0, Lkotlinx/coroutines/g0;->c:I

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/r0;->H(Lkotlinx/coroutines/g0;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v5}, Lkotlinx/coroutines/r0;->M(Z)V

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/g0;->run()V

    :cond_7
    invoke-virtual {v0}, Lkotlinx/coroutines/r0;->O()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v3

    :try_start_1
    invoke-virtual {p0, v3, v2}, Lkotlinx/coroutines/g0;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    invoke-virtual {v0}, Lkotlinx/coroutines/r0;->y()V

    :goto_4
    move v5, v4

    :goto_5
    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    :goto_6
    move-object p0, v1

    goto :goto_8

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lkotlinx/coroutines/r0;->y()V

    throw p0

    :cond_9
    :goto_7
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    :goto_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, v0, :cond_a

    return-object p0

    :cond_a
    return-object v1
.end method

.method public static b(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    invoke-static {v0, v1, p1, p2}, Lh3/a;->f(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public static b0(Lcom/google/android/gms/measurement/internal/x2;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    const-string v13, "SELECT * FROM "

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    const/4 v15, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object v11, v6, v15

    const-string v3, "SQLITE_MASTER"

    const-string v5, "name=?"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object/from16 v2, p1

    move-object v15, v9

    move-object v9, v0

    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v15, v9

    :goto_0
    move-object v9, v15

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v15, v9

    :goto_1
    move-object v9, v15

    :goto_2
    :try_start_3
    const-string v2, "Error querying for table"

    invoke-virtual {v14, v2, v11, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_3
    move-object/from16 v2, p3

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " LIMIT 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v2, ","

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is missing required column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v12, :cond_5

    const/4 v15, 0x0

    :goto_5
    array-length v2, v12

    if-ge v15, v2, :cond_5

    aget-object v2, v12, v15

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, v15, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v15, v15, 0x2

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Table has extra columns. table, columns"

    const-string v3, ", "

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v2, v11, v0}, Lcom/google/android/gms/measurement/internal/v2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    return-void

    :catchall_2
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception v0

    const-string v2, "Failed to verify columns on table that was just created"

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x2;->f:Lcom/google/android/gms/measurement/internal/v2;

    invoke-virtual {v1, v11, v2}, Lcom/google/android/gms/measurement/internal/v2;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    :goto_6
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static c(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-wide v2

    :cond_2
    invoke-static {v0, v1, p1, p2}, Lh3/a;->e(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public static c0(Lcom/google/android/gms/measurement/internal/x2;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/x2;->i:Lcom/google/android/gms/measurement/internal/v2;

    if-nez v1, :cond_0

    const-string v1, "Failed to turn off database read permission"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Failed to turn off database write permission"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Failed to turn on database read permission for owner"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p1, p1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Failed to turn on database write permission for owner"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/v2;->b(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static d(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-wide v2

    :cond_2
    invoke-static {v0, v1, p1, p2}, Lh3/a;->f(JJ)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0
.end method

.method public static e(JJ)J
    .locals 0

    add-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-gez p2, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    :cond_0
    return-wide p0
.end method

.method public static f(JJ)J
    .locals 0

    add-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long p2, p0, p2

    if-gez p2, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    :cond_0
    return-wide p0
.end method

.method public static g(Lo/g;Ln/d;Ljava/util/ArrayList;I)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    if-nez p3, :cond_0

    iget v1, v0, Lo/g;->s0:I

    iget-object v2, v0, Lo/g;->v0:[Lo/b;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lo/g;->t0:I

    iget-object v2, v0, Lo/g;->u0:[Lo/b;

    move v14, v1

    move-object v15, v2

    const/16 v16, 0x2

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v14, :cond_6d

    aget-object v1, v15, v9

    iget-boolean v2, v1, Lo/b;->q:Z

    const/16 v8, 0x8

    const/4 v4, 0x1

    iget-object v7, v1, Lo/b;->a:Lo/f;

    const/16 v17, 0x0

    if-nez v2, :cond_16

    iget v2, v1, Lo/b;->l:I

    mul-int/lit8 v5, v2, 0x2

    move-object v13, v7

    move-object/from16 v19, v13

    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_11

    iget v3, v1, Lo/b;->i:I

    add-int/2addr v3, v4

    iput v3, v1, Lo/b;->i:I

    iget-object v3, v13, Lo/f;->h0:[Lo/f;

    aput-object v17, v3, v2

    iget-object v3, v13, Lo/f;->g0:[Lo/f;

    aput-object v17, v3, v2

    iget v3, v13, Lo/f;->b0:I

    iget-object v4, v13, Lo/f;->K:[Lo/d;

    if-eq v3, v8, :cond_c

    invoke-virtual {v13, v2}, Lo/f;->k(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v4, v5

    invoke-virtual {v3}, Lo/d;->e()I

    add-int/lit8 v3, v5, 0x1

    aget-object v23, v4, v3

    invoke-virtual/range {v23 .. v23}, Lo/d;->e()I

    aget-object v23, v4, v5

    invoke-virtual/range {v23 .. v23}, Lo/d;->e()I

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lo/d;->e()I

    iget-object v3, v1, Lo/b;->b:Lo/f;

    if-nez v3, :cond_1

    iput-object v13, v1, Lo/b;->b:Lo/f;

    :cond_1
    iput-object v13, v1, Lo/b;->d:Lo/f;

    iget-object v3, v13, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v2

    if-ne v3, v8, :cond_c

    iget-object v12, v13, Lo/f;->n:[I

    aget v12, v12, v2

    move/from16 v24, v6

    const/4 v6, 0x3

    if-eqz v12, :cond_3

    if-eq v12, v6, :cond_3

    const/4 v6, 0x2

    if-ne v12, v6, :cond_2

    goto :goto_4

    :cond_2
    :goto_3
    move/from16 v26, v9

    move/from16 v27, v14

    goto :goto_8

    :cond_3
    :goto_4
    iget v6, v1, Lo/b;->j:I

    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lo/b;->j:I

    iget-object v6, v13, Lo/f;->f0:[F

    aget v6, v6, v2

    const/16 v20, 0x0

    cmpl-float v26, v6, v20

    if-lez v26, :cond_4

    move/from16 v26, v9

    iget v9, v1, Lo/b;->k:F

    add-float/2addr v9, v6

    iput v9, v1, Lo/b;->k:F

    goto :goto_5

    :cond_4
    move/from16 v26, v9

    :goto_5
    iget v9, v13, Lo/f;->b0:I

    move/from16 v27, v14

    const/16 v14, 0x8

    if-eq v9, v14, :cond_6

    if-ne v3, v8, :cond_6

    if-eqz v12, :cond_5

    const/4 v3, 0x3

    if-ne v12, v3, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_9

    const/4 v3, 0x0

    cmpg-float v6, v6, v3

    if-gez v6, :cond_7

    const/4 v3, 0x1

    iput-boolean v3, v1, Lo/b;->n:Z

    goto :goto_7

    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, v1, Lo/b;->o:Z

    :goto_7
    iget-object v3, v1, Lo/b;->h:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lo/b;->h:Ljava/util/ArrayList;

    :cond_8
    iget-object v3, v1, Lo/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v3, v1, Lo/b;->f:Lo/f;

    if-nez v3, :cond_a

    iput-object v13, v1, Lo/b;->f:Lo/f;

    :cond_a
    iget-object v3, v1, Lo/b;->g:Lo/f;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lo/f;->g0:[Lo/f;

    aput-object v13, v3, v2

    :cond_b
    iput-object v13, v1, Lo/b;->g:Lo/f;

    goto :goto_8

    :cond_c
    move/from16 v24, v6

    goto :goto_3

    :goto_8
    move-object/from16 v3, v19

    if-eq v3, v13, :cond_d

    iget-object v3, v3, Lo/f;->h0:[Lo/f;

    aput-object v13, v3, v2

    :cond_d
    add-int/lit8 v3, v5, 0x1

    aget-object v3, v4, v3

    iget-object v3, v3, Lo/d;->f:Lo/d;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lo/d;->d:Lo/f;

    iget-object v4, v3, Lo/f;->K:[Lo/d;

    aget-object v4, v4, v5

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-eqz v4, :cond_e

    iget-object v4, v4, Lo/d;->d:Lo/f;

    if-eq v4, v13, :cond_f

    :cond_e
    move-object/from16 v3, v17

    :cond_f
    if-eqz v3, :cond_10

    move/from16 v6, v24

    goto :goto_9

    :cond_10
    move-object v3, v13

    const/4 v6, 0x1

    :goto_9
    move-object/from16 v19, v13

    move/from16 v9, v26

    move/from16 v14, v27

    const/4 v4, 0x1

    const/16 v8, 0x8

    move-object v13, v3

    goto/16 :goto_2

    :cond_11
    move/from16 v26, v9

    move/from16 v27, v14

    iget-object v3, v1, Lo/b;->b:Lo/f;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lo/f;->K:[Lo/d;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lo/d;->e()I

    :cond_12
    iget-object v3, v1, Lo/b;->d:Lo/f;

    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, 0x1

    iget-object v3, v3, Lo/f;->K:[Lo/d;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lo/d;->e()I

    :cond_13
    iput-object v13, v1, Lo/b;->c:Lo/f;

    if-nez v2, :cond_14

    iget-boolean v2, v1, Lo/b;->m:Z

    if-eqz v2, :cond_14

    iput-object v13, v1, Lo/b;->e:Lo/f;

    goto :goto_a

    :cond_14
    iput-object v7, v1, Lo/b;->e:Lo/f;

    :goto_a
    iget-boolean v2, v1, Lo/b;->o:Z

    if-eqz v2, :cond_15

    iget-boolean v2, v1, Lo/b;->n:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    :goto_b
    iput-boolean v2, v1, Lo/b;->p:Z

    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    move/from16 v26, v9

    move/from16 v27, v14

    move v2, v4

    :goto_c
    iput-boolean v2, v1, Lo/b;->q:Z

    if-eqz v11, :cond_18

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_d

    :cond_17
    move-object/from16 v32, v15

    const/16 v18, 0x0

    goto/16 :goto_4a

    :cond_18
    :goto_d
    iget-object v12, v1, Lo/b;->c:Lo/f;

    iget-object v13, v1, Lo/b;->b:Lo/f;

    iget-object v14, v1, Lo/b;->d:Lo/f;

    iget-object v2, v1, Lo/b;->e:Lo/f;

    iget v3, v1, Lo/b;->k:F

    iget-object v4, v0, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, p3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_19

    const/4 v4, 0x1

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    :goto_e
    if-nez p3, :cond_1d

    iget v5, v2, Lo/f;->d0:I

    const/4 v6, 0x1

    if-nez v5, :cond_1a

    const/16 v21, 0x1

    goto :goto_f

    :cond_1a
    const/16 v21, 0x0

    :goto_f
    if-ne v5, v6, :cond_1b

    move v8, v6

    goto :goto_10

    :cond_1b
    const/4 v8, 0x0

    :goto_10
    const/4 v9, 0x2

    if-ne v5, v9, :cond_1c

    move/from16 v5, v21

    goto :goto_13

    :cond_1c
    move/from16 v5, v21

    goto :goto_14

    :cond_1d
    const/4 v6, 0x1

    const/4 v9, 0x2

    iget v5, v2, Lo/f;->e0:I

    if-nez v5, :cond_1e

    move v8, v6

    goto :goto_11

    :cond_1e
    const/4 v8, 0x0

    :goto_11
    if-ne v5, v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_12

    :cond_1f
    const/4 v6, 0x0

    :goto_12
    if-ne v5, v9, :cond_20

    move v5, v8

    move v8, v6

    :goto_13
    move/from16 v19, v5

    move/from16 v23, v8

    const/4 v5, 0x1

    goto :goto_15

    :cond_20
    move v5, v8

    move v8, v6

    :goto_14
    move/from16 v19, v5

    move/from16 v23, v8

    const/4 v5, 0x0

    :goto_15
    move-object v8, v7

    const/4 v6, 0x0

    :goto_16
    iget-object v9, v0, Lo/f;->K:[Lo/d;

    if-nez v6, :cond_2d

    move/from16 v29, v3

    iget-object v3, v8, Lo/f;->K:[Lo/d;

    aget-object v3, v3, v16

    if-eqz v5, :cond_21

    const/16 v28, 0x1

    goto :goto_17

    :cond_21
    const/16 v28, 0x4

    :goto_17
    invoke-virtual {v3}, Lo/d;->e()I

    move-result v30

    move/from16 v31, v6

    iget-object v6, v8, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v11, v6, p3

    move-object/from16 v32, v15

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v15, :cond_22

    iget-object v11, v8, Lo/f;->n:[I

    aget v11, v11, p3

    if-nez v11, :cond_22

    move-object/from16 v33, v2

    const/4 v11, 0x1

    goto :goto_18

    :cond_22
    move-object/from16 v33, v2

    const/4 v11, 0x0

    :goto_18
    iget-object v2, v3, Lo/d;->f:Lo/d;

    if-eqz v2, :cond_23

    if-eq v8, v7, :cond_23

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    add-int v30, v2, v30

    :cond_23
    move/from16 v2, v30

    if-eqz v5, :cond_24

    if-eq v8, v7, :cond_24

    if-eq v8, v13, :cond_24

    move-object/from16 v30, v7

    const/16 v28, 0x8

    goto :goto_19

    :cond_24
    move-object/from16 v30, v7

    :goto_19
    iget-object v7, v3, Lo/d;->f:Lo/d;

    if-eqz v7, :cond_27

    if-ne v8, v13, :cond_25

    move-object/from16 v34, v13

    iget-object v13, v3, Lo/d;->i:Ln/i;

    iget-object v7, v7, Lo/d;->i:Ln/i;

    move-object/from16 v35, v1

    const/4 v1, 0x6

    invoke-virtual {v10, v13, v7, v2, v1}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_1a

    :cond_25
    move-object/from16 v35, v1

    move-object/from16 v34, v13

    iget-object v1, v3, Lo/d;->i:Ln/i;

    iget-object v7, v7, Lo/d;->i:Ln/i;

    const/16 v13, 0x8

    invoke-virtual {v10, v1, v7, v2, v13}, Ln/d;->f(Ln/i;Ln/i;II)V

    :goto_1a
    if-eqz v11, :cond_26

    if-nez v5, :cond_26

    const/4 v1, 0x5

    goto :goto_1b

    :cond_26
    move/from16 v1, v28

    :goto_1b
    iget-object v7, v3, Lo/d;->i:Ln/i;

    iget-object v3, v3, Lo/d;->f:Lo/d;

    iget-object v3, v3, Lo/d;->i:Ln/i;

    invoke-virtual {v10, v7, v3, v2, v1}, Ln/d;->e(Ln/i;Ln/i;II)V

    goto :goto_1c

    :cond_27
    move-object/from16 v35, v1

    move-object/from16 v34, v13

    :goto_1c
    iget-object v1, v8, Lo/f;->K:[Lo/d;

    if-eqz v4, :cond_29

    iget v2, v8, Lo/f;->b0:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_28

    aget-object v2, v6, p3

    if-ne v2, v15, :cond_28

    add-int/lit8 v2, v16, 0x1

    aget-object v2, v1, v2

    iget-object v2, v2, Lo/d;->i:Ln/i;

    aget-object v3, v1, v16

    iget-object v3, v3, Lo/d;->i:Ln/i;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-virtual {v10, v2, v3, v7, v6}, Ln/d;->f(Ln/i;Ln/i;II)V

    goto :goto_1d

    :cond_28
    const/4 v7, 0x0

    :goto_1d
    aget-object v2, v1, v16

    iget-object v2, v2, Lo/d;->i:Ln/i;

    aget-object v3, v9, v16

    iget-object v3, v3, Lo/d;->i:Ln/i;

    const/16 v6, 0x8

    invoke-virtual {v10, v2, v3, v7, v6}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_29
    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_2a

    iget-object v1, v1, Lo/d;->d:Lo/f;

    iget-object v2, v1, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v16

    iget-object v2, v2, Lo/d;->f:Lo/d;

    if-eqz v2, :cond_2a

    iget-object v2, v2, Lo/d;->d:Lo/f;

    if-eq v2, v8, :cond_2b

    :cond_2a
    move-object/from16 v1, v17

    :cond_2b
    if-eqz v1, :cond_2c

    move-object v8, v1

    move/from16 v6, v31

    goto :goto_1e

    :cond_2c
    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v11, p2

    move/from16 v3, v29

    move-object/from16 v7, v30

    move-object/from16 v15, v32

    move-object/from16 v2, v33

    move-object/from16 v13, v34

    move-object/from16 v1, v35

    goto/16 :goto_16

    :cond_2d
    move-object/from16 v35, v1

    move-object/from16 v33, v2

    move/from16 v29, v3

    move-object/from16 v30, v7

    move-object/from16 v34, v13

    move-object/from16 v32, v15

    if-eqz v14, :cond_31

    iget-object v1, v12, Lo/f;->K:[Lo/d;

    add-int/lit8 v2, v16, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_31

    iget-object v1, v14, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v2

    iget-object v3, v14, Lo/f;->N:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, p3

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_2e

    iget-object v3, v14, Lo/f;->n:[I

    aget v3, v3, p3

    if-nez v3, :cond_2e

    const/4 v3, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v3, 0x0

    :goto_1f
    if-eqz v3, :cond_2f

    if-nez v5, :cond_2f

    iget-object v3, v1, Lo/d;->f:Lo/d;

    iget-object v6, v3, Lo/d;->d:Lo/f;

    if-ne v6, v0, :cond_2f

    iget-object v6, v1, Lo/d;->i:Ln/i;

    iget-object v3, v3, Lo/d;->i:Ln/i;

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v7

    neg-int v7, v7

    const/4 v11, 0x5

    invoke-virtual {v10, v6, v3, v7, v11}, Ln/d;->e(Ln/i;Ln/i;II)V

    goto :goto_20

    :cond_2f
    const/4 v11, 0x5

    if-eqz v5, :cond_30

    iget-object v3, v1, Lo/d;->f:Lo/d;

    iget-object v6, v3, Lo/d;->d:Lo/f;

    if-ne v6, v0, :cond_30

    iget-object v6, v1, Lo/d;->i:Ln/i;

    iget-object v3, v3, Lo/d;->i:Ln/i;

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v7

    neg-int v7, v7

    const/4 v8, 0x4

    invoke-virtual {v10, v6, v3, v7, v8}, Ln/d;->e(Ln/i;Ln/i;II)V

    :cond_30
    :goto_20
    iget-object v3, v1, Lo/d;->i:Ln/i;

    iget-object v6, v12, Lo/f;->K:[Lo/d;

    aget-object v2, v6, v2

    iget-object v2, v2, Lo/d;->f:Lo/d;

    iget-object v2, v2, Lo/d;->i:Ln/i;

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    neg-int v1, v1

    const/4 v6, 0x6

    invoke-virtual {v10, v3, v2, v1, v6}, Ln/d;->g(Ln/i;Ln/i;II)V

    goto :goto_21

    :cond_31
    const/4 v11, 0x5

    :goto_21
    if-eqz v4, :cond_32

    add-int/lit8 v1, v16, 0x1

    aget-object v2, v9, v1

    iget-object v2, v2, Lo/d;->i:Ln/i;

    iget-object v3, v12, Lo/f;->K:[Lo/d;

    aget-object v1, v3, v1

    iget-object v3, v1, Lo/d;->i:Ln/i;

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {v10, v2, v3, v1, v4}, Ln/d;->f(Ln/i;Ln/i;II)V

    :cond_32
    move-object/from16 v1, v35

    iget-object v2, v1, Lo/b;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3c

    iget-boolean v6, v1, Lo/b;->n:Z

    if-eqz v6, :cond_33

    iget-boolean v6, v1, Lo/b;->p:Z

    if-nez v6, :cond_33

    iget v6, v1, Lo/b;->j:I

    int-to-float v6, v6

    move/from16 v29, v6

    :cond_33
    move-object/from16 v8, v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_22
    if-ge v7, v3, :cond_3c

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/f;

    iget-object v13, v9, Lo/f;->f0:[F

    aget v13, v13, p3

    const/4 v15, 0x0

    cmpg-float v21, v13, v15

    iget-object v4, v9, Lo/f;->K:[Lo/d;

    if-gez v21, :cond_35

    iget-boolean v13, v1, Lo/b;->p:Z

    if-eqz v13, :cond_34

    add-int/lit8 v9, v16, 0x1

    aget-object v9, v4, v9

    iget-object v9, v9, Lo/d;->i:Ln/i;

    aget-object v4, v4, v16

    iget-object v4, v4, Lo/d;->i:Ln/i;

    const/4 v13, 0x4

    const/4 v15, 0x0

    invoke-virtual {v10, v9, v4, v15, v13}, Ln/d;->e(Ln/i;Ln/i;II)V

    move/from16 v21, v13

    goto :goto_24

    :cond_34
    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x4

    goto :goto_23

    :cond_35
    const/16 v21, 0x4

    const/16 v20, 0x0

    :goto_23
    cmpl-float v28, v13, v20

    if-nez v28, :cond_36

    add-int/lit8 v9, v16, 0x1

    aget-object v9, v4, v9

    iget-object v9, v9, Lo/d;->i:Ln/i;

    aget-object v4, v4, v16

    iget-object v4, v4, Lo/d;->i:Ln/i;

    const/16 v13, 0x8

    const/4 v15, 0x0

    invoke-virtual {v10, v9, v4, v15, v13}, Ln/d;->e(Ln/i;Ln/i;II)V

    :goto_24
    move-object/from16 v31, v2

    move/from16 v28, v3

    move/from16 v18, v15

    const/16 v20, 0x0

    goto/16 :goto_2a

    :cond_36
    const/16 v18, 0x0

    if-eqz v8, :cond_3b

    iget-object v8, v8, Lo/f;->K:[Lo/d;

    aget-object v11, v8, v16

    iget-object v11, v11, Lo/d;->i:Ln/i;

    add-int/lit8 v31, v16, 0x1

    aget-object v8, v8, v31

    iget-object v8, v8, Lo/d;->i:Ln/i;

    aget-object v15, v4, v16

    iget-object v15, v15, Lo/d;->i:Ln/i;

    aget-object v4, v4, v31

    iget-object v4, v4, Lo/d;->i:Ln/i;

    invoke-virtual/range {p1 .. p1}, Ln/d;->m()Ln/c;

    move-result-object v0

    move-object/from16 v31, v2

    const/4 v2, 0x0

    iput v2, v0, Ln/c;->b:F

    cmpl-float v20, v29, v2

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v20, :cond_3a

    cmpl-float v20, v6, v13

    if-nez v20, :cond_37

    goto :goto_26

    :cond_37
    const/16 v20, 0x0

    cmpl-float v36, v6, v20

    if-nez v36, :cond_38

    iget-object v4, v0, Ln/c;->d:Ln/b;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v4, v11, v6}, Ln/b;->d(Ln/i;F)V

    iget-object v4, v0, Ln/c;->d:Ln/b;

    invoke-interface {v4, v8, v2}, Ln/b;->d(Ln/i;F)V

    goto :goto_25

    :cond_38
    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v28, :cond_39

    iget-object v6, v0, Ln/c;->d:Ln/b;

    invoke-interface {v6, v15, v2}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v0, Ln/c;->d:Ln/b;

    const/high16 v6, -0x40800000    # -1.0f

    invoke-interface {v2, v4, v6}, Ln/b;->d(Ln/i;F)V

    :goto_25
    move/from16 v28, v3

    goto :goto_28

    :cond_39
    div-float v6, v6, v29

    div-float v28, v13, v29

    div-float v6, v6, v28

    move/from16 v28, v3

    iget-object v3, v0, Ln/c;->d:Ln/b;

    invoke-interface {v3, v11, v2}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v0, Ln/c;->d:Ln/b;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-interface {v2, v8, v3}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v0, Ln/c;->d:Ln/b;

    invoke-interface {v2, v4, v6}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v0, Ln/c;->d:Ln/b;

    neg-float v3, v6

    goto :goto_27

    :cond_3a
    :goto_26
    move/from16 v28, v3

    const/16 v20, 0x0

    move v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v6, v0, Ln/c;->d:Ln/b;

    invoke-interface {v6, v11, v2}, Ln/b;->d(Ln/i;F)V

    iget-object v6, v0, Ln/c;->d:Ln/b;

    invoke-interface {v6, v8, v3}, Ln/b;->d(Ln/i;F)V

    iget-object v6, v0, Ln/c;->d:Ln/b;

    invoke-interface {v6, v4, v2}, Ln/b;->d(Ln/i;F)V

    iget-object v2, v0, Ln/c;->d:Ln/b;

    :goto_27
    invoke-interface {v2, v15, v3}, Ln/b;->d(Ln/i;F)V

    :goto_28
    invoke-virtual {v10, v0}, Ln/d;->c(Ln/c;)V

    goto :goto_29

    :cond_3b
    move-object/from16 v31, v2

    move/from16 v28, v3

    const/16 v20, 0x0

    :goto_29
    move-object v8, v9

    move v6, v13

    :goto_2a
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v28

    move-object/from16 v2, v31

    const/4 v4, 0x1

    const/4 v11, 0x5

    move-object/from16 v0, p0

    goto/16 :goto_22

    :cond_3c
    const/16 v18, 0x0

    const/16 v21, 0x4

    if-eqz v34, :cond_44

    move-object/from16 v0, v34

    if-eq v0, v14, :cond_3e

    if-eqz v5, :cond_3d

    goto :goto_2b

    :cond_3d
    move/from16 v13, v26

    move-object/from16 v7, v30

    goto/16 :goto_2f

    :cond_3e
    :goto_2b
    move-object/from16 v7, v30

    iget-object v1, v7, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v16

    iget-object v2, v12, Lo/f;->K:[Lo/d;

    add-int/lit8 v3, v16, 0x1

    aget-object v2, v2, v3

    iget-object v1, v1, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_3f

    iget-object v1, v1, Lo/d;->i:Ln/i;

    move-object v4, v1

    goto :goto_2c

    :cond_3f
    move-object/from16 v4, v17

    :goto_2c
    iget-object v1, v2, Lo/d;->f:Lo/d;

    if-eqz v1, :cond_40

    iget-object v1, v1, Lo/d;->i:Ln/i;

    move-object v6, v1

    goto :goto_2d

    :cond_40
    move-object/from16 v6, v17

    :goto_2d
    iget-object v1, v0, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v16

    iget-object v2, v14, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v3

    if-eqz v4, :cond_42

    if-eqz v6, :cond_42

    move-object/from16 v3, v33

    if-nez p3, :cond_41

    iget v3, v3, Lo/f;->Y:F

    goto :goto_2e

    :cond_41
    iget v3, v3, Lo/f;->Z:F

    :goto_2e
    move v5, v3

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v7

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v8

    iget-object v3, v1, Lo/d;->i:Ln/i;

    iget-object v9, v2, Lo/d;->i:Ln/i;

    const/4 v11, 0x7

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v7

    move-object v7, v9

    move/from16 v13, v26

    const/4 v15, 0x2

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Ln/d;->b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V

    goto/16 :goto_47

    :cond_42
    move/from16 v13, v26

    const/4 v15, 0x2

    :cond_43
    move/from16 v26, v13

    goto/16 :goto_47

    :cond_44
    move/from16 v13, v26

    move-object/from16 v7, v30

    move-object/from16 v0, v34

    :goto_2f
    const/4 v15, 0x2

    if-eqz v19, :cond_56

    if-eqz v0, :cond_56

    iget v2, v1, Lo/b;->j:I

    if-lez v2, :cond_45

    iget v1, v1, Lo/b;->i:I

    if-ne v1, v2, :cond_45

    const/16 v25, 0x1

    goto :goto_30

    :cond_45
    move/from16 v25, v18

    :goto_30
    move-object v9, v0

    move-object v11, v9

    :goto_31
    if-eqz v11, :cond_43

    iget-object v1, v11, Lo/f;->h0:[Lo/f;

    aget-object v1, v1, p3

    move-object v8, v1

    :goto_32
    if-eqz v8, :cond_46

    iget v1, v8, Lo/f;->b0:I

    const/16 v6, 0x8

    if-ne v1, v6, :cond_47

    iget-object v1, v8, Lo/f;->h0:[Lo/f;

    aget-object v8, v1, p3

    goto :goto_32

    :cond_46
    const/16 v6, 0x8

    :cond_47
    if-nez v8, :cond_49

    if-ne v11, v14, :cond_48

    goto :goto_33

    :cond_48
    move-object v15, v7

    move-object/from16 v22, v8

    move-object/from16 v20, v9

    move/from16 v26, v13

    const/4 v13, 0x5

    goto/16 :goto_3a

    :cond_49
    :goto_33
    iget-object v1, v11, Lo/f;->K:[Lo/d;

    aget-object v2, v1, v16

    iget-object v3, v2, Lo/d;->i:Ln/i;

    iget-object v4, v2, Lo/d;->f:Lo/d;

    if-eqz v4, :cond_4a

    iget-object v4, v4, Lo/d;->i:Ln/i;

    goto :goto_34

    :cond_4a
    move-object/from16 v4, v17

    :goto_34
    if-eq v9, v11, :cond_4b

    iget-object v4, v9, Lo/f;->K:[Lo/d;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    goto :goto_35

    :cond_4b
    if-ne v11, v0, :cond_4d

    if-ne v9, v11, :cond_4d

    iget-object v4, v7, Lo/f;->K:[Lo/d;

    aget-object v4, v4, v16

    iget-object v4, v4, Lo/d;->f:Lo/d;

    if-eqz v4, :cond_4c

    :goto_35
    iget-object v4, v4, Lo/d;->i:Ln/i;

    goto :goto_36

    :cond_4c
    move-object/from16 v4, v17

    :cond_4d
    :goto_36
    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    add-int/lit8 v5, v16, 0x1

    aget-object v20, v1, v5

    invoke-virtual/range {v20 .. v20}, Lo/d;->e()I

    move-result v20

    if-eqz v8, :cond_4e

    iget-object v6, v8, Lo/f;->K:[Lo/d;

    aget-object v6, v6, v16

    iget-object v15, v6, Lo/d;->i:Ln/i;

    aget-object v1, v1, v5

    goto :goto_38

    :cond_4e
    iget-object v6, v12, Lo/f;->K:[Lo/d;

    aget-object v6, v6, v5

    iget-object v6, v6, Lo/d;->f:Lo/d;

    if-eqz v6, :cond_4f

    iget-object v15, v6, Lo/d;->i:Ln/i;

    goto :goto_37

    :cond_4f
    move-object/from16 v15, v17

    :goto_37
    aget-object v1, v1, v5

    :goto_38
    iget-object v1, v1, Lo/d;->i:Ln/i;

    if-eqz v6, :cond_50

    invoke-virtual {v6}, Lo/d;->e()I

    move-result v6

    add-int v20, v6, v20

    :cond_50
    if-eqz v9, :cond_51

    iget-object v6, v9, Lo/f;->K:[Lo/d;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lo/d;->e()I

    move-result v6

    add-int/2addr v2, v6

    :cond_51
    if-eqz v3, :cond_48

    if-eqz v4, :cond_48

    if-eqz v15, :cond_48

    if-eqz v1, :cond_48

    if-ne v11, v0, :cond_52

    iget-object v2, v0, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v16

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    :cond_52
    move v6, v2

    if-ne v11, v14, :cond_53

    iget-object v2, v14, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    move/from16 v20, v2

    :cond_53
    if-eqz v25, :cond_54

    const/16 v21, 0x8

    goto :goto_39

    :cond_54
    const/16 v21, 0x5

    :goto_39
    const/high16 v5, 0x3f000000    # 0.5f

    move-object/from16 v26, v1

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    const/16 v22, 0x8

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v7, v26

    move-object/from16 v22, v8

    move/from16 v8, v20

    move-object/from16 v20, v9

    move/from16 v26, v13

    const/4 v13, 0x5

    move/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Ln/d;->b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V

    :goto_3a
    iget v1, v11, Lo/f;->b0:I

    const/16 v9, 0x8

    if-eq v1, v9, :cond_55

    move-object/from16 v20, v11

    :cond_55
    move-object v7, v15

    move-object/from16 v9, v20

    move-object/from16 v11, v22

    move/from16 v13, v26

    const/4 v15, 0x2

    goto/16 :goto_31

    :cond_56
    move-object v15, v7

    move/from16 v26, v13

    const/16 v9, 0x8

    const/4 v13, 0x5

    if-eqz v23, :cond_65

    if-eqz v0, :cond_65

    iget v2, v1, Lo/b;->j:I

    if-lez v2, :cond_57

    iget v1, v1, Lo/b;->i:I

    if-ne v1, v2, :cond_57

    const/16 v25, 0x1

    goto :goto_3b

    :cond_57
    move/from16 v25, v18

    :goto_3b
    move-object v8, v0

    move-object v11, v8

    :goto_3c
    if-eqz v11, :cond_62

    iget-object v1, v11, Lo/f;->h0:[Lo/f;

    aget-object v1, v1, p3

    :goto_3d
    if-eqz v1, :cond_58

    iget v2, v1, Lo/f;->b0:I

    if-ne v2, v9, :cond_58

    iget-object v1, v1, Lo/f;->h0:[Lo/f;

    aget-object v1, v1, p3

    goto :goto_3d

    :cond_58
    if-eq v11, v0, :cond_60

    if-eq v11, v14, :cond_60

    if-eqz v1, :cond_60

    if-ne v1, v14, :cond_59

    move-object/from16 v7, v17

    goto :goto_3e

    :cond_59
    move-object v7, v1

    :goto_3e
    iget-object v1, v11, Lo/f;->K:[Lo/d;

    aget-object v2, v1, v16

    iget-object v3, v2, Lo/d;->i:Ln/i;

    iget-object v4, v8, Lo/f;->K:[Lo/d;

    add-int/lit8 v5, v16, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Lo/d;->i:Ln/i;

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lo/d;->e()I

    move-result v6

    if-eqz v7, :cond_5b

    iget-object v1, v7, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v16

    iget-object v9, v1, Lo/d;->i:Ln/i;

    iget-object v13, v1, Lo/d;->f:Lo/d;

    if-eqz v13, :cond_5a

    iget-object v13, v13, Lo/d;->i:Ln/i;

    goto :goto_40

    :cond_5a
    move-object/from16 v13, v17

    goto :goto_40

    :cond_5b
    iget-object v9, v14, Lo/f;->K:[Lo/d;

    aget-object v9, v9, v16

    if-eqz v9, :cond_5c

    iget-object v13, v9, Lo/d;->i:Ln/i;

    goto :goto_3f

    :cond_5c
    move-object/from16 v13, v17

    :goto_3f
    aget-object v1, v1, v5

    iget-object v1, v1, Lo/d;->i:Ln/i;

    move-object/from16 v37, v13

    move-object v13, v1

    move-object v1, v9

    move-object/from16 v9, v37

    :goto_40
    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    add-int/2addr v1, v6

    move/from16 v20, v1

    goto :goto_41

    :cond_5d
    move/from16 v20, v6

    :goto_41
    iget-object v1, v8, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    add-int v5, v1, v2

    if-eqz v25, :cond_5e

    const/16 v22, 0x8

    goto :goto_42

    :cond_5e
    move/from16 v22, v21

    :goto_42
    if-eqz v3, :cond_5f

    if-eqz v4, :cond_5f

    if-eqz v9, :cond_5f

    if-eqz v13, :cond_5f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    move-object/from16 v28, v7

    move-object v7, v13

    move-object v13, v8

    move/from16 v8, v20

    move/from16 v20, v21

    move-object/from16 v21, v13

    const/16 v13, 0x8

    move/from16 v9, v22

    invoke-virtual/range {v1 .. v9}, Ln/d;->b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V

    goto :goto_43

    :cond_5f
    move-object/from16 v28, v7

    move/from16 v20, v21

    const/16 v13, 0x8

    move-object/from16 v21, v8

    :goto_43
    move-object/from16 v1, v28

    goto :goto_44

    :cond_60
    move v13, v9

    move/from16 v20, v21

    move-object/from16 v21, v8

    :goto_44
    iget v2, v11, Lo/f;->b0:I

    if-eq v2, v13, :cond_61

    move-object v8, v11

    goto :goto_45

    :cond_61
    move-object/from16 v8, v21

    :goto_45
    move-object v11, v1

    move v9, v13

    move/from16 v21, v20

    const/4 v13, 0x5

    goto/16 :goto_3c

    :cond_62
    iget-object v1, v0, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v16

    iget-object v2, v15, Lo/f;->K:[Lo/d;

    aget-object v2, v2, v16

    iget-object v2, v2, Lo/d;->f:Lo/d;

    iget-object v3, v14, Lo/f;->K:[Lo/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v11, v3, v4

    iget-object v3, v12, Lo/f;->K:[Lo/d;

    aget-object v3, v3, v4

    iget-object v13, v3, Lo/d;->f:Lo/d;

    if-eqz v2, :cond_64

    if-eq v0, v14, :cond_63

    iget-object v3, v1, Lo/d;->i:Ln/i;

    iget-object v2, v2, Lo/d;->i:Ln/i;

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v1

    const/4 v4, 0x5

    invoke-virtual {v10, v3, v2, v1, v4}, Ln/d;->e(Ln/i;Ln/i;II)V

    goto :goto_46

    :cond_63
    if-eqz v13, :cond_64

    iget-object v3, v1, Lo/d;->i:Ln/i;

    iget-object v4, v2, Lo/d;->i:Ln/i;

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v7, v11, Lo/d;->i:Ln/i;

    iget-object v8, v13, Lo/d;->i:Ln/i;

    invoke-virtual {v11}, Lo/d;->e()I

    move-result v9

    const/4 v15, 0x5

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v15

    invoke-virtual/range {v1 .. v9}, Ln/d;->b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V

    :cond_64
    :goto_46
    if-eqz v13, :cond_65

    if-eq v0, v14, :cond_65

    iget-object v1, v11, Lo/d;->i:Ln/i;

    iget-object v2, v13, Lo/d;->i:Ln/i;

    invoke-virtual {v11}, Lo/d;->e()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x5

    invoke-virtual {v10, v1, v2, v3, v4}, Ln/d;->e(Ln/i;Ln/i;II)V

    :cond_65
    :goto_47
    if-nez v19, :cond_66

    if-eqz v23, :cond_6c

    :cond_66
    if-eqz v0, :cond_6c

    if-eq v0, v14, :cond_6c

    iget-object v1, v0, Lo/f;->K:[Lo/d;

    aget-object v2, v1, v16

    iget-object v3, v14, Lo/f;->K:[Lo/d;

    add-int/lit8 v4, v16, 0x1

    aget-object v3, v3, v4

    iget-object v5, v2, Lo/d;->f:Lo/d;

    if-eqz v5, :cond_67

    iget-object v5, v5, Lo/d;->i:Ln/i;

    goto :goto_48

    :cond_67
    move-object/from16 v5, v17

    :goto_48
    iget-object v6, v3, Lo/d;->f:Lo/d;

    if-eqz v6, :cond_68

    iget-object v6, v6, Lo/d;->i:Ln/i;

    goto :goto_49

    :cond_68
    move-object/from16 v6, v17

    :goto_49
    if-eq v12, v14, :cond_6a

    iget-object v6, v12, Lo/f;->K:[Lo/d;

    aget-object v6, v6, v4

    iget-object v6, v6, Lo/d;->f:Lo/d;

    if-eqz v6, :cond_69

    iget-object v6, v6, Lo/d;->i:Ln/i;

    move-object/from16 v17, v6

    :cond_69
    move-object/from16 v6, v17

    :cond_6a
    if-ne v0, v14, :cond_6b

    aget-object v3, v1, v4

    :cond_6b
    if-eqz v5, :cond_6c

    if-eqz v6, :cond_6c

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v2}, Lo/d;->e()I

    move-result v7

    iget-object v1, v14, Lo/f;->K:[Lo/d;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lo/d;->e()I

    move-result v8

    iget-object v2, v2, Lo/d;->i:Ln/i;

    iget-object v9, v3, Lo/d;->i:Ln/i;

    const/4 v11, 0x5

    move-object/from16 v1, p1

    move-object v3, v5

    move v4, v7

    move v5, v0

    move-object v7, v9

    move v9, v11

    invoke-virtual/range {v1 .. v9}, Ln/d;->b(Ln/i;Ln/i;IFLn/i;Ln/i;II)V

    :cond_6c
    :goto_4a
    add-int/lit8 v9, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    move/from16 v14, v27

    move-object/from16 v15, v32

    goto/16 :goto_1

    :cond_6d
    return-void
.end method

.method public static h(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;
    .locals 1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;->construct(Ljava/util/Set;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/util/IgnorePropertiesUtil$Checker;

    move-result-object p0

    return-object p0
.end method

.method public static final i(C)B
    .locals 1

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_0

    sget-object v0, Lkotlinx/serialization/json/internal/d;->b:[B

    aget-byte p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final j(II)V
    .locals 4

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "toIndex ("

    const-string v2, ") is greater than size ("

    const-string v3, ")."

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/activity/b;->j(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IllegalArgumentException"

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IllegalAccessException"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeslBaseReflector"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Fail to get class = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SeslBaseReflector"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static n(Landroid/content/res/ColorStateList;[I)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Lw/a;->b(II)I

    move-result p0

    return p0
.end method

.method public static o(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :catch_1
    const-string v0, "Reflector did not find field = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SeslBaseReflector"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public static varargs p(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :catch_1
    const-string p2, "Reflector did not find method = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SeslBaseReflector"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method public static varargs q(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-static {p0}, Lh3/a;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Reflector did not find method = "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslBaseReflector"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static varargs r(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Reflector did not find method = "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslBaseReflector"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static varargs s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0}, Lh3/a;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Reflector did not find method = "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslBaseReflector"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static t(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/manager/d;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/core/util/d;

    new-instance v1, Landroidx/core/util/d;

    const-string v2, "context"

    invoke-direct {v1, v2, p0}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lp9/d;->m([Landroidx/core/util/d;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Ll9/b;->a:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ll9/a;

    invoke-direct {v1, p1, p0, v2}, Ll9/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/d;Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static u(Landroid/content/Context;Lcom/samsung/android/kmxservice/trustchain/manager/d;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/core/util/d;

    new-instance v2, Landroidx/core/util/d;

    const-string v3, "context"

    invoke-direct {v2, v3, p0}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lp9/d;->m([Landroidx/core/util/d;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Ll9/b;->a:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ll9/a;

    invoke-direct {v2, p1, p0, v0}, Ll9/a;-><init>(Lcom/samsung/android/kmxservice/trustchain/manager/d;Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "failed to get system properties : "

    const-string v2, ", error : "

    invoke-static {v1, p0, v2}, Landroidx/activity/b;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv4/b;->P(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static w(Landroid/content/Context;Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;Landroidx/appcompat/widget/i4;)V
    .locals 7

    const-string v0, "1HRxoVU6SA"

    const/4 v1, 0x4

    new-array v1, v1, [Landroidx/core/util/d;

    new-instance v2, Landroidx/core/util/d;

    const-string v3, "context"

    invoke-direct {v2, v3, p0}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroidx/core/util/d;

    const-string v4, "appId"

    invoke-direct {v2, v4, v0}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroidx/core/util/d;

    const-string v5, "pushMode"

    invoke-direct {v2, v5, p1}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroidx/core/util/d;

    const-string v5, "smpInitOptions"

    invoke-direct {v2, v5, p2}, Landroidx/core/util/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-static {v1}, Lp9/d;->m([Landroidx/core/util/d;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Ll9/b;->a:I

    const-string v1, "allArea"

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v2, "b"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/i4;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " P:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;->getName(Lcom/samsung/android/sdk/smp/SmpConstants$PushModeForHkAndMo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " A:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lj3/f;->k(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lf9/a;->b()Lf9/a;

    move-result-object v1

    iput-object v0, v1, Lf9/a;->d:Ljava/io/Serializable;

    iput-object p1, v1, Lf9/a;->g:Ljava/lang/Object;

    iget-boolean p1, p2, Landroidx/appcompat/widget/i4;->b:Z

    iput-boolean p1, v1, Lf9/a;->b:Z

    sget-boolean v0, Lj3/f;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    sput-boolean p1, Lj3/f;->g:Z

    iget-object p1, p2, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    iput-object p1, v1, Lf9/a;->f:Ljava/io/Serializable;

    iget-object p1, p2, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lf9/a;->e:Ljava/lang/Object;

    iget-boolean p1, p2, Landroidx/appcompat/widget/i4;->c:Z

    iput-boolean p1, v1, Lf9/a;->c:Z

    sput-boolean v3, Lva/n;->c:Z

    sget-object p1, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->INITIALIZE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    sget p2, Lv4/b;->b:I

    if-eqz p0, :cond_5

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-static {p0}, Lfc/e;->v(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "b"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is disabled. finish..."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lj3/f;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    invoke-interface {p1}, Lp9/b;->value()I

    move-result p2

    invoke-static {p0}, Lp9/c;->b(Landroid/content/Context;)I

    move-result v0

    add-int/2addr v0, p2

    const-string p2, "b"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatch - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lp9/d;->a:Landroid/os/HandlerThread;

    const-class p2, Lp9/d;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lp9/d;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_4

    const-string v0, "d"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmpCtrThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lp9/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ld/j;

    sget-object v1, Lp9/d;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ld/j;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lp9/d;->b:Ld/j;

    :cond_4
    sget v0, Lp9/d;->c:I

    add-int/2addr v0, v4

    sput v0, Lp9/d;->c:I

    sget-object v0, Lp9/d;->b:Ld/j;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    sget v1, Lp9/d;->c:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "EXTRA_TASKID"

    invoke-interface {p1}, Lp9/b;->value()I

    move-result p1

    invoke-static {p0}, Lp9/c;->b(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lp9/d;->b:Ld/j;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_5
    :goto_2
    const-string p0, "b"

    const-string p1, "fail to dispatch. invalid params"

    invoke-static {p0, p1}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public static varargs x(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " InvocationTargetException"

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IllegalArgumentException"

    goto :goto_0

    :catch_2
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IllegalAccessException"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SeslBaseReflector"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized y(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lh3/a;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lh3/a;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    sget-object v2, Lh3/a;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lh3/a;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lh3/a;->b:Ljava/lang/Boolean;

    sput-object p0, Lh3/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "SamsungAnalyticsPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "quota_reset_date"

    const-wide/16 v2, 0x0

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lva/n;->l(ILjava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "data_used"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "wifi_used"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string v0, "rint"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "policy_received_date"

    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lva/n;->l(ILjava/lang/Long;)Z

    move-result p0

    return p0
.end method
