.class public final Lv3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv3/b;

.field public final b:Lv3/b;

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv3/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const v4, 0x7f03005f

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lv3/b;

    invoke-direct {v1}, Lv3/b;-><init>()V

    iput-object v1, v0, Lv3/c;->b:Lv3/b;

    iget v1, v8, Lv3/b;->a:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    const-string v2, "badge"

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v9, :cond_1

    if-ne v5, v10, :cond_0

    :cond_1
    if-ne v5, v9, :cond_3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    move-object v3, v1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have a <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> start tag"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t load badge resource ID #0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_4
    const/4 v1, 0x0

    move-object v3, v1

    move v2, v11

    :goto_0
    if-nez v2, :cond_5

    const v1, 0x7f1304ee

    move v5, v1

    goto :goto_1

    :cond_5
    move v5, v2

    :goto_1
    sget-object v6, Ls3/a;->c:[I

    new-array v12, v11, [I

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v6

    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lh9/a;->z(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lv3/c;->c:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06020d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lv3/c;->i:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060210

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v0, Lv3/c;->j:I

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, v0, Lv3/c;->d:F

    const v6, 0x7f06007d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    const/16 v13, 0xc

    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    iput v12, v0, Lv3/c;->e:F

    const v12, 0x7f060081

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    const/16 v15, 0x11

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    iput v14, v0, Lv3/c;->g:F

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const/4 v14, 0x3

    invoke-virtual {v1, v14, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, v0, Lv3/c;->f:F

    const/16 v6, 0xd

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {v1, v6, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    iput v6, v0, Lv3/c;->h:F

    const/16 v6, 0x18

    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lv3/c;->k:I

    iget-object v6, v0, Lv3/c;->b:Lv3/b;

    iget v12, v8, Lv3/b;->i:I

    const/4 v15, -0x2

    if-ne v12, v15, :cond_6

    const/16 v12, 0xff

    :cond_6
    iput v12, v6, Lv3/b;->i:I

    iget v12, v8, Lv3/b;->k:I

    if-eq v12, v15, :cond_7

    iput v12, v6, Lv3/b;->k:I

    goto :goto_2

    :cond_7
    const/16 v6, 0x17

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    invoke-virtual {v1, v6, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v4, Lv3/b;->k:I

    goto :goto_2

    :cond_8
    iget-object v6, v0, Lv3/c;->b:Lv3/b;

    iput v4, v6, Lv3/b;->k:I

    :goto_2
    iget-object v4, v8, Lv3/b;->j:Ljava/lang/String;

    const/4 v6, 0x7

    if-eqz v4, :cond_9

    iget-object v12, v0, Lv3/c;->b:Lv3/b;

    iput-object v4, v12, Lv3/b;->j:Ljava/lang/String;

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->j:Ljava/lang/String;

    :cond_a
    :goto_3
    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v8, Lv3/b;->p:Ljava/lang/CharSequence;

    iput-object v12, v4, Lv3/b;->p:Ljava/lang/CharSequence;

    iget-object v12, v8, Lv3/b;->q:Ljava/lang/CharSequence;

    if-nez v12, :cond_b

    const v12, 0x7f120093

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_b
    iput-object v12, v4, Lv3/b;->q:Ljava/lang/CharSequence;

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget v12, v8, Lv3/b;->t:I

    if-nez v12, :cond_c

    const v12, 0x7f100001

    :cond_c
    iput v12, v4, Lv3/b;->t:I

    iget v12, v8, Lv3/b;->u:I

    if-nez v12, :cond_d

    const v12, 0x7f1200a0

    :cond_d
    iput v12, v4, Lv3/b;->u:I

    iget-object v12, v8, Lv3/b;->w:Ljava/lang/Boolean;

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_4

    :cond_e
    move v12, v11

    goto :goto_5

    :cond_f
    :goto_4
    move v12, v10

    :goto_5
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->w:Ljava/lang/Boolean;

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget v12, v8, Lv3/b;->l:I

    if-ne v12, v15, :cond_10

    const/16 v12, 0x15

    invoke-virtual {v1, v12, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    :cond_10
    iput v12, v4, Lv3/b;->l:I

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget v12, v8, Lv3/b;->m:I

    if-ne v12, v15, :cond_11

    const/16 v12, 0x16

    invoke-virtual {v1, v12, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    :cond_11
    iput v12, v4, Lv3/b;->m:I

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v8, Lv3/b;->e:Ljava/lang/Integer;

    const v15, 0x7f130200

    const/4 v6, 0x5

    if-nez v12, :cond_12

    invoke-virtual {v1, v6, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_6

    :cond_12
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->e:Ljava/lang/Integer;

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v8, Lv3/b;->f:Ljava/lang/Integer;

    const/4 v5, 0x6

    if-nez v12, :cond_13

    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_7

    :cond_13
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->f:Ljava/lang/Integer;

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v8, Lv3/b;->g:Ljava/lang/Integer;

    if-nez v12, :cond_14

    const/16 v12, 0xf

    invoke-virtual {v1, v12, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_8

    :cond_14
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->g:Ljava/lang/Integer;

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v8, Lv3/b;->h:Ljava/lang/Integer;

    if-nez v12, :cond_15

    const/16 v12, 0x10

    invoke-virtual {v1, v12, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_9

    :cond_15
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->h:Ljava/lang/Integer;

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v8, Lv3/b;->b:Ljava/lang/Integer;

    if-nez v12, :cond_16

    invoke-static {v7, v1, v10}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v12

    goto :goto_a

    :cond_16
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->b:Ljava/lang/Integer;

    iget-object v4, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v8, Lv3/b;->d:Ljava/lang/Integer;

    const/16 v15, 0x8

    if-nez v12, :cond_17

    const v12, 0x7f1302b1

    invoke-virtual {v1, v15, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_b

    :cond_17
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v4, Lv3/b;->d:Ljava/lang/Integer;

    iget-object v4, v8, Lv3/b;->c:Ljava/lang/Integer;

    if-eqz v4, :cond_18

    iget-object v3, v0, Lv3/c;->b:Lv3/b;

    goto :goto_e

    :cond_18
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_19

    iget-object v3, v0, Lv3/c;->b:Lv3/b;

    invoke-static {v7, v1, v4}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    goto :goto_d

    :cond_19
    iget-object v12, v0, Lv3/c;->b:Lv3/b;

    iget-object v12, v12, Lv3/b;->d:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v4, Lb/a;->A:[I

    invoke-virtual {v7, v12, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v15, 0x0

    invoke-virtual {v4, v11, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    invoke-static {v7, v4, v14}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-static {v7, v4, v3}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    invoke-static {v7, v4, v6}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v4, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_c

    :cond_1a
    const/16 v13, 0xa

    :goto_c
    invoke-virtual {v4, v13, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v4, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    invoke-static {v7, v4, v5}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v3, 0x7

    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v3, 0x8

    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    const/16 v3, 0x9

    invoke-virtual {v4, v3, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v3, Ls3/a;->y:[I

    invoke-virtual {v7, v12, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    invoke-virtual {v3, v11, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, v0, Lv3/c;->b:Lv3/b;

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    :goto_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_e
    iput-object v4, v3, Lv3/b;->c:Ljava/lang/Integer;

    iget-object v3, v0, Lv3/c;->b:Lv3/b;

    iget-object v4, v8, Lv3/b;->v:Ljava/lang/Integer;

    if-nez v4, :cond_1b

    const v4, 0x800035

    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    goto :goto_f

    :cond_1b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lv3/b;->v:Ljava/lang/Integer;

    iget-object v3, v0, Lv3/c;->b:Lv3/b;

    iget-object v4, v8, Lv3/b;->x:Ljava/lang/Integer;

    if-nez v4, :cond_1c

    const v4, 0x7f06020e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0xb

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_10

    :cond_1c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lv3/b;->x:Ljava/lang/Integer;

    iget-object v3, v0, Lv3/c;->b:Lv3/b;

    iget-object v4, v8, Lv3/b;->y:Ljava/lang/Integer;

    if-nez v4, :cond_1d

    const v4, 0x7f060083

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v4, 0xa

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto :goto_11

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lv3/b;->y:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->z:Ljava/lang/Integer;

    if-nez v3, :cond_1e

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_12

    :cond_1e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->z:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->A:Ljava/lang/Integer;

    if-nez v3, :cond_1f

    const/16 v3, 0x19

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_13

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->A:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->B:Ljava/lang/Integer;

    if-nez v3, :cond_20

    iget-object v3, v2, Lv3/b;->z:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x13

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_14

    :cond_20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->B:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->C:Ljava/lang/Integer;

    if-nez v3, :cond_21

    iget-object v3, v2, Lv3/b;->A:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1a

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_15

    :cond_21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->C:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->G:Ljava/lang/Integer;

    if-nez v3, :cond_22

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    goto :goto_16

    :cond_22
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->G:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->E:Ljava/lang/Integer;

    if-nez v3, :cond_23

    move v3, v11

    goto :goto_17

    :cond_23
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->E:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->F:Ljava/lang/Integer;

    if-nez v3, :cond_24

    move v3, v11

    goto :goto_18

    :cond_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->F:Ljava/lang/Integer;

    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iget-object v3, v8, Lv3/b;->H:Ljava/lang/Boolean;

    if-nez v3, :cond_25

    invoke-virtual {v1, v11, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_19

    :cond_25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lv3/b;->H:Ljava/lang/Boolean;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v8, Lv3/b;->n:Ljava/util/Locale;

    if-nez v1, :cond_26

    iget-object v1, v0, Lv3/c;->b:Lv3/b;

    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Lv3/b;->n:Ljava/util/Locale;

    goto :goto_1a

    :cond_26
    iget-object v2, v0, Lv3/c;->b:Lv3/b;

    iput-object v1, v2, Lv3/b;->n:Ljava/util/Locale;

    :goto_1a
    iput-object v8, v0, Lv3/c;->a:Lv3/b;

    return-void
.end method
