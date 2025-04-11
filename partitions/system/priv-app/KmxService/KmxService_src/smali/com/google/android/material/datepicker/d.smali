.class public final Lcom/google/android/material/datepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0302fc

    .line 1
    invoke-static {v1, p1, v0}, Lp9/d;->j0(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 2
    sget-object v1, Ls3/a;->t:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/u;->c(Landroid/content/Context;I)Landroidx/appcompat/widget/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/u;->c(Landroid/content/Context;I)Landroidx/appcompat/widget/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/d;->g:Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/u;->c(Landroid/content/Context;I)Landroidx/appcompat/widget/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/d;->b:Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/widget/u;->c(Landroid/content/Context;I)Landroidx/appcompat/widget/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/d;->c:Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Lv4/b;->F(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/appcompat/widget/u;->c(Landroid/content/Context;I)Landroidx/appcompat/widget/u;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/d;->d:Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/appcompat/widget/u;->c(Landroid/content/Context;I)Landroidx/appcompat/widget/u;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/d;->e:Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/appcompat/widget/u;->c(Landroid/content/Context;I)Landroidx/appcompat/widget/u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/d;->f:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/d;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ZZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "get"

    .line 3
    invoke-static {v0, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    invoke-static {p2, v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v0, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    .line 6
    invoke-static {p3, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/d;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "set"

    .line 7
    invoke-static {v3, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v1, v4, v2

    .line 8
    invoke-static {p3, v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/d;->c:Ljava/lang/Object;

    const-string v1, "has"

    const/4 v3, 0x0

    if-eqz p6, :cond_0

    .line 9
    invoke-static {v1, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    .line 10
    invoke-static {p2, v4, v5}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    iput-object v4, p0, Lcom/google/android/material/datepicker/d;->d:Ljava/lang/Object;

    if-eqz p6, :cond_1

    .line 11
    invoke-static {v1, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    new-array v1, v2, [Ljava/lang/Class;

    .line 12
    invoke-static {p3, p6, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p6

    goto :goto_1

    :cond_1
    move-object p6, v3

    :goto_1
    iput-object p6, p0, Lcom/google/android/material/datepicker/d;->e:Ljava/lang/Object;

    const-string p6, "clear"

    .line 13
    invoke-static {p6, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p6, v2, [Ljava/lang/Class;

    .line 14
    invoke-static {p3, p1, p6}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/d;->f:Ljava/lang/Object;

    const-string p1, "Case"

    if-eqz p5, :cond_2

    .line 15
    invoke-static {v0, p4, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    new-array v1, v2, [Ljava/lang/Class;

    .line 16
    invoke-static {p2, p6, v1}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, v3

    :goto_2
    iput-object p2, p0, Lcom/google/android/material/datepicker/d;->g:Ljava/lang/Object;

    if-eqz p5, :cond_3

    .line 17
    invoke-static {v0, p4, p1}, Lorg/spongycastle/jcajce/provider/digest/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Class;

    .line 18
    invoke-static {p3, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    :cond_3
    iput-object v3, p0, Lcom/google/android/material/datepicker/d;->h:Ljava/lang/Object;

    return-void
.end method
