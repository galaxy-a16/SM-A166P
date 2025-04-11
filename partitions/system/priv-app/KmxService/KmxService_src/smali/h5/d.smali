.class public Lh5/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;
.implements Landroidx/profileinstaller/d;
.implements La1/e;
.implements Lcom/google/android/gms/measurement/internal/d;
.implements Lcom/google/android/gms/measurement/internal/l2;
.implements Lkotlin/coroutines/h;
.implements Lcom/google/crypto/tink/shaded/protobuf/r;
.implements Lg5/a;


# static fields
.field public static a:Lh5/d;

.field public static b:Lh5/d;

.field public static final c:Lh5/d;

.field public static final synthetic d:Lh5/d;

.field public static final synthetic e:Lh5/d;

.field public static final synthetic f:Lh5/d;

.field public static final g:Lh5/d;

.field public static final h:Lh5/d;

.field public static final synthetic i:Lh5/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->c:Lh5/d;

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->d:Lh5/d;

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->e:Lh5/d;

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->f:Lh5/d;

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->g:Lh5/d;

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->h:Lh5/d;

    new-instance v0, Lh5/d;

    invoke-direct {v0}, Lh5/d;-><init>()V

    sput-object v0, Lh5/d;->i:Lh5/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_3

    const/16 v3, 0x26

    const/4 v4, 0x4

    invoke-static {p0, v3, v2, v1, v4}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const/16 v6, 0x3d

    invoke-static {p0, v6, v2, v1, v4}, Lkotlin/text/s;->T(Ljava/lang/CharSequence;CIZI)I

    move-result v4

    const-string v6, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    if-eq v4, v5, :cond_2

    if-le v4, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final d(Lh5/d;Ljava/lang/String;)Lokhttp3/h;
    .locals 1

    new-instance p0, Lokhttp3/h;

    invoke-direct {p0, p1}, Lokhttp3/h;-><init>(Ljava/lang/String;)V

    sget-object v0, Lokhttp3/h;->c:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static e(Ljava/lang/String;IILjava/lang/String;ZZZZI)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    and-int/lit8 v2, p8, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, p8, 0x40

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v3, p7

    :goto_5
    const-string v8, "$this$canonicalize"

    invoke-static {v0, v8}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    move v8, v2

    :goto_6
    if-ge v8, v4, :cond_13

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    const/16 v10, 0x2b

    const/16 v11, 0x7f

    const/16 v12, 0x80

    const/16 v13, 0x25

    const/16 v14, 0x20

    if-lt v9, v14, :cond_9

    if-eq v9, v11, :cond_9

    if-lt v9, v12, :cond_6

    if-eqz v3, :cond_9

    :cond_6
    int-to-char v15, v9

    invoke-static {v1, v15}, Lkotlin/text/s;->O(Ljava/lang/CharSequence;C)Z

    move-result v15

    if-nez v15, :cond_9

    if-ne v9, v13, :cond_7

    if-eqz v5, :cond_9

    if-eqz v6, :cond_7

    invoke-static {v8, v4, v0}, Lh5/d;->u(IILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_7
    if-ne v9, v10, :cond_8

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_8
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_6

    :cond_9
    :goto_7
    new-instance v9, Lkc/e;

    invoke-direct {v9}, Lkc/e;-><init>()V

    invoke-virtual {v9, v2, v8, v0}, Lkc/e;->B0(IILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_8
    if-ge v8, v4, :cond_12

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    if-eqz v5, :cond_a

    const/16 v13, 0x9

    if-eq v15, v13, :cond_11

    const/16 v13, 0xa

    if-eq v15, v13, :cond_11

    const/16 v13, 0xc

    if-eq v15, v13, :cond_11

    const/16 v13, 0xd

    if-eq v15, v13, :cond_11

    :cond_a
    if-ne v15, v10, :cond_c

    if-eqz v7, :cond_c

    if-eqz v5, :cond_b

    const-string v13, "+"

    goto :goto_9

    :cond_b
    const-string v13, "%2B"

    :goto_9
    invoke-virtual {v9, v13}, Lkc/e;->C0(Ljava/lang/String;)V

    goto :goto_c

    :cond_c
    if-lt v15, v14, :cond_f

    if-eq v15, v11, :cond_f

    if-lt v15, v12, :cond_d

    if-eqz v3, :cond_f

    :cond_d
    int-to-char v13, v15

    invoke-static {v1, v13}, Lkotlin/text/s;->O(Ljava/lang/CharSequence;C)Z

    move-result v13

    if-nez v13, :cond_f

    const/16 v13, 0x25

    if-ne v15, v13, :cond_e

    if-eqz v5, :cond_f

    if-eqz v6, :cond_e

    invoke-static {v8, v4, v0}, Lh5/d;->u(IILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v9, v15}, Lkc/e;->D0(I)V

    goto :goto_c

    :cond_f
    :goto_a
    if-nez v2, :cond_10

    new-instance v2, Lkc/e;

    invoke-direct {v2}, Lkc/e;-><init>()V

    :cond_10
    invoke-virtual {v2, v15}, Lkc/e;->D0(I)V

    :goto_b
    invoke-virtual {v2}, Lkc/e;->G()Z

    move-result v13

    if-nez v13, :cond_11

    invoke-virtual {v2}, Lkc/e;->readByte()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Lkc/e;->h0(I)V

    sget-object v16, Lokhttp3/u;->k:[C

    shr-int/lit8 v17, v13, 0x4

    and-int/lit8 v17, v17, 0xf

    aget-char v10, v16, v17

    invoke-virtual {v9, v10}, Lkc/e;->h0(I)V

    and-int/lit8 v10, v13, 0xf

    aget-char v10, v16, v10

    invoke-virtual {v9, v10}, Lkc/e;->h0(I)V

    const/16 v10, 0x2b

    goto :goto_b

    :cond_11
    :goto_c
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v8, v10

    const/16 v10, 0x2b

    const/16 v13, 0x25

    goto/16 :goto_8

    :cond_12
    invoke-virtual {v9}, Lkc/e;->H()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_13
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    return-object v0
.end method

.method public static f(Landroidx/savedstate/f;)Landroidx/savedstate/e;
    .locals 1

    const-string v0, "owner"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/savedstate/e;

    invoke-direct {v0, p0}, Landroidx/savedstate/e;-><init>(Landroidx/savedstate/f;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2

    const-string v0, "scheme"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x310888    # 4.503E-39f

    if-eq v0, v1, :cond_1

    const v1, 0x5f008eb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1bb

    goto :goto_1

    :cond_1
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x50

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static h(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroidx/lifecycle/z;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/z;

    invoke-interface {p0}, Landroidx/lifecycle/z;->getLifecycle()Landroidx/lifecycle/t;

    move-result-object p0

    instance-of v0, p0, Landroidx/lifecycle/b0;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/lifecycle/b0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/b0;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method public static m(FFFF)Landroid/graphics/Path;
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "^(smp)-[a-zA-Z0-9]*-[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static q(Ld/s0;Landroid/database/sqlite/SQLiteDatabase;)Landroidx/sqlite/db/framework/b;
    .locals 2

    const-string v0, "refHolder"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqLiteDatabase"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld/s0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/sqlite/db/framework/b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/sqlite/db/framework/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p1}, Li4/f;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Landroidx/sqlite/db/framework/b;

    invoke-direct {v0, p1}, Landroidx/sqlite/db/framework/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Ld/s0;->b:Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static r(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 7

    sget-object v0, Landroidx/emoji2/text/l;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-nez p0, :cond_0

    goto/16 :goto_b

    :cond_0
    if-ltz p2, :cond_1c

    if-gez p3, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-eq v2, v4, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    goto/16 :goto_b

    :cond_4
    if-eqz p4, :cond_19

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v1, :cond_e

    if-ge p4, v1, :cond_5

    goto :goto_4

    :cond_5
    if-gez p2, :cond_6

    goto :goto_4

    :cond_6
    :goto_2
    move p4, v0

    :goto_3
    if-nez p2, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_9

    if-eqz p4, :cond_8

    goto :goto_4

    :cond_8
    move v1, v0

    goto :goto_5

    :cond_9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_b

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_a

    goto :goto_4

    :cond_a
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_b
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_c

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_c
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_d

    goto :goto_4

    :cond_d
    move p4, v3

    goto :goto_3

    :cond_e
    :goto_4
    move v1, v4

    :goto_5
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_17

    if-ge p3, v2, :cond_f

    goto :goto_8

    :cond_f
    if-gez p2, :cond_10

    goto :goto_8

    :cond_10
    :goto_6
    move p4, v0

    :goto_7
    if-nez p2, :cond_11

    move p3, v2

    goto :goto_9

    :cond_11
    if-lt v2, p3, :cond_12

    if-eqz p4, :cond_18

    goto :goto_8

    :cond_12
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_14

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_13

    goto :goto_8

    :cond_13
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_15

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_16

    goto :goto_8

    :cond_16
    add-int/lit8 v2, v2, 0x1

    move p4, v3

    goto :goto_7

    :cond_17
    :goto_8
    move p3, v4

    :cond_18
    :goto_9
    if-eq v1, v4, :cond_1c

    if-ne p3, v4, :cond_1a

    goto :goto_b

    :cond_19
    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1a
    const-class p2, Landroidx/emoji2/text/a0;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/a0;

    if-eqz p2, :cond_1c

    array-length p4, p2

    if-lez p4, :cond_1c

    array-length p4, p2

    move v2, v0

    :goto_a
    if-ge v2, p4, :cond_1b

    aget-object v4, p2, v2

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v0, v3

    :cond_1c
    :goto_b
    return v0
.end method

.method public static s(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/w0;->Companion:Landroidx/lifecycle/v0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/lifecycle/w0;

    invoke-direct {v0}, Landroidx/lifecycle/w0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/x0;

    invoke-direct {v2}, Landroidx/lifecycle/x0;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public static u(IILjava/lang/String;)Z
    .locals 2

    add-int/lit8 v0, p0, 0x2

    if-ge v0, p1, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lac/c;->o(C)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lac/c;->o(C)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static v(Ljava/lang/String;IIZI)Ljava/lang/String;
    .locals 7

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v1

    :cond_2
    const-string p4, "$this$percentDecode"

    invoke-static {p0, p4}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_8

    invoke-virtual {p0, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    const/16 v2, 0x25

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    invoke-virtual {v0, p1, p4, p0}, Lkc/e;->B0(IILjava/lang/String;)V

    :goto_2
    if-ge p4, p2, :cond_7

    invoke-virtual {p0, p4}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    if-ne p1, v2, :cond_5

    add-int/lit8 v3, p4, 0x2

    if-ge v3, p2, :cond_5

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lac/c;->o(C)I

    move-result v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lac/c;->o(C)I

    move-result v5

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    if-eq v5, v6, :cond_6

    shl-int/lit8 p4, v4, 0x4

    add-int/2addr p4, v5

    invoke-virtual {v0, p4}, Lkc/e;->h0(I)V

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int p4, p1, v3

    goto :goto_2

    :cond_5
    if-ne p1, v1, :cond_6

    if-eqz p3, :cond_6

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Lkc/e;->h0(I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Lkc/e;->D0(I)V

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr p4, p1

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lkc/e;->H()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p0
.end method


# virtual methods
.method public B(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(La1/d;)La1/f;
    .locals 6

    new-instance p0, Landroidx/sqlite/db/framework/f;

    iget-object v1, p1, La1/d;->a:Landroid/content/Context;

    iget-object v2, p1, La1/d;->b:Ljava/lang/String;

    iget-object v3, p1, La1/d;->c:La1/c;

    iget-boolean v4, p1, La1/d;->d:Z

    iget-boolean v5, p1, La1/d;->e:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/framework/f;-><init>(Landroid/content/Context;Ljava/lang/String;La1/c;ZZ)V

    return-object p0
.end method

.method public c(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 1

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0x7f1200d6

    iget-object p1, p1, Landroidx/preference/Preference;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public declared-synchronized i(Ljava/lang/String;)Lokhttp3/h;
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "javaName"

    invoke-static {p1, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokhttp3/h;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/h;

    if-nez v1, :cond_3

    const-string v1, "TLS_"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    const-string v5, "SSL_"

    const/4 v6, 0x4

    if-eqz v3, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v5, v2}, Lkotlin/text/r;->N(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/h;

    if-nez v1, :cond_2

    new-instance v1, Lokhttp3/h;

    invoke-direct {v1, p1}, Lokhttp3/h;-><init>(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    return-object p1
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public n(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ProviderInfo;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to get provider info prior to API 19"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public p(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 0

    const/16 p0, 0x40

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object p0
.end method

.method public t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public w(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public x(Z)V
    .locals 0

    return-void
.end method

.method public y(Z)V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 0

    return-void
.end method

.method public zza()Ljava/lang/Object;
    .locals 2

    sget-object p0, Lcom/google/android/gms/measurement/internal/o2;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/i6;->b:Lcom/google/android/gms/internal/measurement/i6;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/i6;->a()Lcom/google/android/gms/internal/measurement/j6;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/k6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/measurement/k6;->f:Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o3;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
