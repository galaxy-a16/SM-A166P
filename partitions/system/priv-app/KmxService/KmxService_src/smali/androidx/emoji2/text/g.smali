.class public final Landroidx/emoji2/text/g;
.super Lp5/c;
.source "SourceFile"


# instance fields
.field public volatile d:Landroidx/emoji2/text/t;

.field public volatile e:Lp1/i;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/l;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lp5/c;-><init>(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/CharSequence;IIZ)Ljava/lang/CharSequence;
    .locals 11

    iget-object p0, p0, Landroidx/emoji2/text/g;->d:Landroidx/emoji2/text/t;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroidx/emoji2/text/z;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Landroidx/emoji2/text/z;

    invoke-virtual {v1}, Landroidx/emoji2/text/z;->a()V

    :cond_0
    const-class v1, Landroidx/emoji2/text/a0;

    if-nez v0, :cond_3

    :try_start_0
    instance-of v2, p1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p3, 0x1

    invoke-interface {v2, v3, v4, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    if-gt v2, p3, :cond_2

    new-instance v2, Landroidx/emoji2/text/b0;

    invoke-direct {v2, p1}, Landroidx/emoji2/text/b0;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v2, Landroidx/emoji2/text/b0;

    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    invoke-direct {v2, v3}, Landroidx/emoji2/text/b0;-><init>(Landroid/text/Spannable;)V

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2, p2, p3, v1}, Landroidx/emoji2/text/b0;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/a0;

    if-eqz v1, :cond_5

    array-length v4, v1

    if-lez v4, :cond_5

    array-length v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Landroidx/emoji2/text/b0;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v2, v6}, Landroidx/emoji2/text/b0;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, p3, :cond_4

    invoke-virtual {v2, v6}, Landroidx/emoji2/text/b0;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-eq p2, p3, :cond_17

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p2, v1, :cond_6

    goto/16 :goto_5

    :cond_6
    new-instance v1, Landroidx/emoji2/text/s;

    iget-object v4, p0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    check-cast v4, Lp1/i;

    iget-object v4, v4, Lp1/i;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/emoji2/text/x;

    iget-boolean v5, p0, Landroidx/emoji2/text/t;->a:Z

    iget-object v6, p0, Landroidx/emoji2/text/t;->e:Ljava/lang/Object;

    check-cast v6, [I

    invoke-direct {v1, v4, v5, v6}, Landroidx/emoji2/text/s;-><init>(Landroidx/emoji2/text/x;Z[I)V

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    move v5, v3

    :goto_3
    move v6, v4

    move v4, p2

    :cond_7
    :goto_4
    const/16 v7, 0x21

    const/4 v8, 0x1

    const v9, 0x7fffffff

    const/4 v10, 0x2

    if-ge p2, p3, :cond_f

    if-ge v5, v9, :cond_f

    invoke-virtual {v1, v6}, Landroidx/emoji2/text/s;->a(I)I

    move-result v9

    if-eq v9, v8, :cond_d

    if-eq v9, v10, :cond_c

    const/4 v8, 0x3

    if-eq v9, v8, :cond_8

    goto :goto_4

    :cond_8
    if-nez p4, :cond_9

    iget-object v8, v1, Landroidx/emoji2/text/s;->d:Landroidx/emoji2/text/x;

    iget-object v8, v8, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    invoke-virtual {p0, p1, v4, p2, v8}, Landroidx/emoji2/text/t;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z

    move-result v8

    if-nez v8, :cond_b

    :cond_9
    if-nez v2, :cond_a

    new-instance v2, Landroidx/emoji2/text/b0;

    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v2, v8}, Landroidx/emoji2/text/b0;-><init>(Landroid/text/Spannable;)V

    :cond_a
    iget-object v8, v1, Landroidx/emoji2/text/s;->d:Landroidx/emoji2/text/x;

    iget-object v8, v8, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    iget-object v9, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v9, Ll4/e;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/emoji2/text/a0;

    invoke-direct {v9, v8}, Landroidx/emoji2/text/a0;-><init>(Landroidx/emoji2/text/r;)V

    invoke-virtual {v2, v9, v4, p2, v7}, Landroidx/emoji2/text/b0;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    :cond_b
    move v4, v6

    goto :goto_3

    :cond_c
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr p2, v7

    if-ge p2, p3, :cond_7

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    goto :goto_4

    :cond_d
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr v4, p2

    if-ge v4, p3, :cond_e

    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    :cond_e
    move p2, v4

    goto :goto_4

    :cond_f
    iget p3, v1, Landroidx/emoji2/text/s;->a:I

    if-ne p3, v10, :cond_11

    iget-object p3, v1, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget-object p3, p3, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    if-eqz p3, :cond_11

    iget p3, v1, Landroidx/emoji2/text/s;->f:I

    if-gt p3, v8, :cond_10

    invoke-virtual {v1}, Landroidx/emoji2/text/s;->c()Z

    move-result p3

    if-eqz p3, :cond_11

    :cond_10
    move v3, v8

    :cond_11
    if-eqz v3, :cond_14

    if-ge v5, v9, :cond_14

    if-nez p4, :cond_12

    iget-object p3, v1, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget-object p3, p3, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    invoke-virtual {p0, p1, v4, p2, p3}, Landroidx/emoji2/text/t;->b(Ljava/lang/CharSequence;IILandroidx/emoji2/text/r;)Z

    move-result p3

    if-nez p3, :cond_14

    :cond_12
    if-nez v2, :cond_13

    new-instance p3, Landroidx/emoji2/text/b0;

    invoke-direct {p3, p1}, Landroidx/emoji2/text/b0;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, p3

    :cond_13
    iget-object p3, v1, Landroidx/emoji2/text/s;->c:Landroidx/emoji2/text/x;

    iget-object p3, p3, Landroidx/emoji2/text/x;->b:Landroidx/emoji2/text/r;

    iget-object p0, p0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast p0, Ll4/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/emoji2/text/a0;

    invoke-direct {p0, p3}, Landroidx/emoji2/text/a0;-><init>(Landroidx/emoji2/text/r;)V

    invoke-virtual {v2, p0, v4, p2, v7}, Landroidx/emoji2/text/b0;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    if-eqz v2, :cond_16

    iget-object p0, v2, Landroidx/emoji2/text/b0;->b:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_15

    check-cast p1, Landroidx/emoji2/text/z;

    invoke-virtual {p1}, Landroidx/emoji2/text/z;->b()V

    :cond_15
    move-object p1, p0

    goto :goto_7

    :cond_16
    if-eqz v0, :cond_18

    goto :goto_6

    :cond_17
    :goto_5
    if-eqz v0, :cond_18

    :goto_6
    move-object p0, p1

    check-cast p0, Landroidx/emoji2/text/z;

    invoke-virtual {p0}, Landroidx/emoji2/text/z;->b()V

    :cond_18
    :goto_7
    return-object p1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_19

    check-cast p1, Landroidx/emoji2/text/z;

    invoke-virtual {p1}, Landroidx/emoji2/text/z;->b()V

    :cond_19
    throw p0
.end method

.method public final r(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/emoji2/text/g;->e:Lp1/i;

    iget-object v1, v1, Lp1/i;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/flatbuffer/b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/emoji2/text/flatbuffer/c;->a(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v1, Landroidx/emoji2/text/flatbuffer/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v1, v1, Landroidx/emoji2/text/flatbuffer/c;->a:I

    add-int/2addr v2, v1

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object p0, p0, Lp5/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "android.support.text.emoji.emojiCompat_replaceAll"

    invoke-virtual {p1, p0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
