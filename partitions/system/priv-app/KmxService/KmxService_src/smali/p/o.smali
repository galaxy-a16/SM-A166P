.class public final Lp/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final e:Landroid/util/SparseIntArray;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Z

.field public final c:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lp/o;->d:[I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lp/o;->e:Landroid/util/SparseIntArray;

    const/16 v2, 0x4d

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4e

    const/16 v5, 0x1a

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v6, 0x50

    const/16 v7, 0x1d

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v8, 0x51

    const/16 v9, 0x1e

    invoke-virtual {v1, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v10, 0x57

    const/16 v11, 0x24

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v10, 0x56

    const/16 v11, 0x23

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v10, 0x3b

    const/4 v11, 0x4

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v12, 0x3a

    invoke-virtual {v1, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v13, 0x38

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v15, 0x5f

    const/4 v8, 0x6

    invoke-virtual {v1, v15, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v15, 0x60

    const/4 v6, 0x7

    invoke-virtual {v1, v15, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v15, 0x42

    const/16 v4, 0x11

    invoke-virtual {v1, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x43

    const/16 v9, 0x12

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v7, 0x13

    const/16 v14, 0x44

    invoke-virtual {v1, v14, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v7, 0x0

    const/16 v14, 0x1b

    invoke-virtual {v1, v7, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v7, 0x20

    const/16 v14, 0x52

    invoke-virtual {v1, v14, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v7, 0x53

    const/16 v2, 0x21

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x41

    const/16 v7, 0xa

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x40

    const/16 v7, 0x9

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x63

    const/16 v7, 0xd

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x66

    const/16 v7, 0x10

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x64

    const/16 v7, 0xe

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x61

    const/16 v7, 0xb

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x65

    const/16 v7, 0xf

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x62

    const/16 v7, 0xc

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x5a

    const/16 v7, 0x28

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x4b

    const/16 v7, 0x27

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x4a

    const/16 v7, 0x29

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x59

    const/16 v7, 0x2a

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x49

    const/16 v7, 0x14

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x58

    const/16 v7, 0x25

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x3f

    const/4 v7, 0x5

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x4c

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x55

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x4f

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x39

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x37

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v2, 0x5

    const/16 v7, 0x18

    invoke-virtual {v1, v2, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x1c

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x17

    const/16 v6, 0x1f

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x18

    const/16 v6, 0x8

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x22

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x8

    const/4 v6, 0x2

    invoke-virtual {v1, v2, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v2, 0x17

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    const/16 v2, 0x16

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0xd

    const/16 v2, 0x2b

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x2c

    invoke-virtual {v1, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    const/16 v2, 0x2d

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x16

    const/16 v2, 0x2e

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x14

    const/16 v2, 0x3c

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x2f

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x13

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0xe

    const/16 v2, 0x31

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0xf

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x10

    const/16 v2, 0x33

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x34

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x35

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5b

    const/16 v2, 0x36

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x45

    const/16 v2, 0x37

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5c

    invoke-virtual {v1, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x46

    const/16 v2, 0x39

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5d

    invoke-virtual {v1, v0, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x47

    invoke-virtual {v1, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3c

    const/16 v2, 0x3d

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3e

    const/16 v2, 0x3e

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3d

    const/16 v2, 0x3f

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1b

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6b

    const/16 v2, 0x41

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x22

    invoke-virtual {v1, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6c

    const/16 v2, 0x43

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x68

    const/16 v2, 0x4f

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x26

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x67

    const/16 v2, 0x44

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5e

    const/16 v2, 0x45

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x48

    const/16 v2, 0x46

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1f

    const/16 v2, 0x47

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x48

    const/16 v2, 0x1d

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x49

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x20

    const/16 v2, 0x4a

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1c

    const/16 v2, 0x4b

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x69

    const/16 v2, 0x4c

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x54

    const/16 v2, 0x4d

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6d

    const/16 v2, 0x4e

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x36

    const/16 v2, 0x50

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x35

    const/16 v2, 0x51

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp/o;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp/o;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp/o;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static c(Lp/a;Ljava/lang/String;)[I
    .locals 10

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Lp/q;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v7, v2

    :goto_1
    if-nez v7, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-nez v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    if-eqz v9, :cond_1

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->m:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_2
    add-int/lit8 v5, v4, 0x1

    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_3
    array-length p0, p1

    if-eq v4, p0, :cond_4

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static d(Landroid/content/Context;Landroid/util/AttributeSet;)Lp/j;
    .locals 13

    new-instance v0, Lp/j;

    invoke-direct {v0}, Lp/j;-><init>()V

    sget-object v1, Lp/r;->a:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, v0, Lp/j;->b:Lp/m;

    iget-object v6, v0, Lp/j;->c:Lp/l;

    iget-object v7, v0, Lp/j;->e:Lp/n;

    iget-object v8, v0, Lp/j;->d:Lp/k;

    if-eq v3, v4, :cond_0

    const/16 v9, 0x17

    if-eq v9, v3, :cond_0

    const/16 v9, 0x18

    if-eq v9, v3, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    sget-object v9, Lp/o;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const-string v12, "ConstraintSet"

    packed-switch v10, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown attribute 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unused attribute 0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    iget-boolean v4, v8, Lp/k;->h0:Z

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v8, Lp/k;->h0:Z

    goto/16 :goto_3

    :pswitch_2
    iget-boolean v4, v8, Lp/k;->g0:Z

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v8, Lp/k;->g0:Z

    goto/16 :goto_3

    :pswitch_3
    iget v4, v6, Lp/l;->c:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v6, Lp/l;->c:F

    goto/16 :goto_3

    :pswitch_4
    iget v4, v5, Lp/m;->b:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Lp/m;->b:I

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lp/k;->f0:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_6
    iget v4, v6, Lp/l;->b:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v6, Lp/l;->b:I

    goto/16 :goto_3

    :pswitch_7
    iget-boolean v4, v8, Lp/k;->i0:Z

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v8, Lp/k;->i0:Z

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lp/k;->e0:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_9
    iget v4, v8, Lp/k;->b0:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->b0:I

    goto/16 :goto_3

    :pswitch_a
    iget v4, v8, Lp/k;->a0:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v8, Lp/k;->a0:I

    goto/16 :goto_3

    :pswitch_b
    const-string v3, "CURRENTLY UNSUPPORTED"

    invoke-static {v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, v3, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->Z:F

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, v3, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->Y:F

    goto/16 :goto_3

    :pswitch_e
    iget v4, v5, Lp/m;->d:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v5, Lp/m;->d:F

    goto/16 :goto_3

    :pswitch_f
    iget v4, v6, Lp/l;->d:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v6, Lp/l;->d:F

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v4, Lh3/a;->o:[Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v3, v4, v3

    goto :goto_1

    :pswitch_12
    iget v4, v6, Lp/l;->a:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v6, Lp/l;->a:I

    goto/16 :goto_3

    :pswitch_13
    iget v4, v8, Lp/k;->y:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->y:F

    goto/16 :goto_3

    :pswitch_14
    iget v4, v8, Lp/k;->x:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->x:I

    goto/16 :goto_3

    :pswitch_15
    iget v4, v8, Lp/k;->w:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->w:I

    goto/16 :goto_3

    :pswitch_16
    iget v4, v7, Lp/n;->a:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v7, Lp/n;->a:F

    goto/16 :goto_3

    :pswitch_17
    iget v4, v8, Lp/k;->X:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->X:I

    goto/16 :goto_3

    :pswitch_18
    iget v4, v8, Lp/k;->W:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->W:I

    goto/16 :goto_3

    :pswitch_19
    iget v4, v8, Lp/k;->V:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->V:I

    goto/16 :goto_3

    :pswitch_1a
    iget v4, v8, Lp/k;->U:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->U:I

    goto/16 :goto_3

    :pswitch_1b
    iget v4, v8, Lp/k;->T:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v8, Lp/k;->T:I

    goto/16 :goto_3

    :pswitch_1c
    iget v4, v8, Lp/k;->S:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v8, Lp/k;->S:I

    goto/16 :goto_3

    :pswitch_1d
    iget v4, v7, Lp/n;->j:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v7, Lp/n;->j:F

    goto/16 :goto_3

    :pswitch_1e
    iget v4, v7, Lp/n;->i:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v7, Lp/n;->i:F

    goto/16 :goto_3

    :pswitch_1f
    iget v4, v7, Lp/n;->h:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v7, Lp/n;->h:F

    goto/16 :goto_3

    :pswitch_20
    iget v4, v7, Lp/n;->g:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v7, Lp/n;->g:F

    goto/16 :goto_3

    :pswitch_21
    iget v4, v7, Lp/n;->f:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v7, Lp/n;->f:F

    goto/16 :goto_3

    :pswitch_22
    iget v4, v7, Lp/n;->e:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v7, Lp/n;->e:F

    goto/16 :goto_3

    :pswitch_23
    iget v4, v7, Lp/n;->d:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v7, Lp/n;->d:F

    goto/16 :goto_3

    :pswitch_24
    iget v4, v7, Lp/n;->c:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v7, Lp/n;->c:F

    goto/16 :goto_3

    :pswitch_25
    iget v4, v7, Lp/n;->b:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v7, Lp/n;->b:F

    goto/16 :goto_3

    :pswitch_26
    iput-boolean v4, v7, Lp/n;->k:Z

    iget v4, v7, Lp/n;->l:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, v7, Lp/n;->l:F

    goto/16 :goto_3

    :pswitch_27
    iget v4, v5, Lp/m;->c:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v5, Lp/m;->c:F

    goto/16 :goto_3

    :pswitch_28
    iget v4, v8, Lp/k;->R:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v8, Lp/k;->R:I

    goto/16 :goto_3

    :pswitch_29
    iget v4, v8, Lp/k;->Q:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v8, Lp/k;->Q:I

    goto/16 :goto_3

    :pswitch_2a
    iget v4, v8, Lp/k;->O:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->O:F

    goto/16 :goto_3

    :pswitch_2b
    iget v4, v8, Lp/k;->P:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->P:F

    goto/16 :goto_3

    :pswitch_2c
    iget v4, v0, Lp/j;->a:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lp/j;->a:I

    goto/16 :goto_3

    :pswitch_2d
    iget v4, v8, Lp/k;->u:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->u:F

    goto/16 :goto_3

    :pswitch_2e
    iget v4, v8, Lp/k;->k:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->k:I

    goto/16 :goto_3

    :pswitch_2f
    iget v4, v8, Lp/k;->l:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->l:I

    goto/16 :goto_3

    :pswitch_30
    iget v4, v8, Lp/k;->E:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->E:I

    goto/16 :goto_3

    :pswitch_31
    iget v4, v8, Lp/k;->q:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->q:I

    goto/16 :goto_3

    :pswitch_32
    iget v4, v8, Lp/k;->p:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->p:I

    goto/16 :goto_3

    :pswitch_33
    iget v4, v8, Lp/k;->H:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->H:I

    goto/16 :goto_3

    :pswitch_34
    iget v4, v8, Lp/k;->j:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->j:I

    goto/16 :goto_3

    :pswitch_35
    iget v4, v8, Lp/k;->i:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->i:I

    goto/16 :goto_3

    :pswitch_36
    iget v4, v8, Lp/k;->D:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->D:I

    goto/16 :goto_3

    :pswitch_37
    iget v4, v8, Lp/k;->B:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v8, Lp/k;->B:I

    goto/16 :goto_3

    :pswitch_38
    iget v4, v8, Lp/k;->h:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->h:I

    goto/16 :goto_3

    :pswitch_39
    iget v4, v8, Lp/k;->g:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->g:I

    goto/16 :goto_3

    :pswitch_3a
    iget v4, v8, Lp/k;->C:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->C:I

    goto/16 :goto_3

    :pswitch_3b
    iget v4, v8, Lp/k;->b:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v8, Lp/k;->b:I

    goto/16 :goto_3

    :pswitch_3c
    iget v4, v5, Lp/m;->a:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    sget-object v4, Lp/o;->d:[I

    aget v3, v4, v3

    iput v3, v5, Lp/m;->a:I

    goto/16 :goto_3

    :pswitch_3d
    iget v4, v8, Lp/k;->c:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, v8, Lp/k;->c:I

    goto/16 :goto_3

    :pswitch_3e
    iget v4, v8, Lp/k;->t:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->t:F

    goto/16 :goto_3

    :pswitch_3f
    iget v4, v8, Lp/k;->f:F

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lp/k;->f:F

    goto/16 :goto_3

    :pswitch_40
    iget v4, v8, Lp/k;->e:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v8, Lp/k;->e:I

    goto/16 :goto_3

    :pswitch_41
    iget v4, v8, Lp/k;->d:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v8, Lp/k;->d:I

    goto/16 :goto_3

    :pswitch_42
    iget v4, v8, Lp/k;->J:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->J:I

    goto/16 :goto_3

    :pswitch_43
    iget v4, v8, Lp/k;->N:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->N:I

    goto/16 :goto_3

    :pswitch_44
    iget v4, v8, Lp/k;->K:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->K:I

    goto/16 :goto_3

    :pswitch_45
    iget v4, v8, Lp/k;->I:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->I:I

    goto/16 :goto_3

    :pswitch_46
    iget v4, v8, Lp/k;->M:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->M:I

    goto/16 :goto_3

    :pswitch_47
    iget v4, v8, Lp/k;->L:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->L:I

    goto/16 :goto_3

    :pswitch_48
    iget v4, v8, Lp/k;->r:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->r:I

    goto :goto_3

    :pswitch_49
    iget v4, v8, Lp/k;->s:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->s:I

    goto :goto_3

    :pswitch_4a
    iget v4, v8, Lp/k;->G:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->G:I

    goto :goto_3

    :pswitch_4b
    iget v4, v8, Lp/k;->A:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v8, Lp/k;->A:I

    goto :goto_3

    :pswitch_4c
    iget v4, v8, Lp/k;->z:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v8, Lp/k;->z:I

    goto :goto_3

    :pswitch_4d
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lp/k;->v:Ljava/lang/String;

    goto :goto_3

    :pswitch_4e
    iget v4, v8, Lp/k;->m:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->m:I

    goto :goto_3

    :pswitch_4f
    iget v4, v8, Lp/k;->n:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->n:I

    goto :goto_3

    :pswitch_50
    iget v4, v8, Lp/k;->F:I

    invoke-virtual {p0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v8, Lp/k;->F:I

    goto :goto_3

    :pswitch_51
    iget v4, v8, Lp/k;->o:I

    invoke-static {p0, v3, v4}, Lp/o;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v8, Lp/k;->o:I

    goto :goto_3

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static f(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Lp/o;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x1

    const/4 v7, -0x1

    if-ge v6, v3, :cond_e

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "ConstraintSet"

    if-nez v10, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "id unknown "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v7, "UNKNOWN"

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    iget-boolean v10, v1, Lp/o;->b:Z

    if-eqz v10, :cond_2

    if-eq v9, v7, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    if-ne v9, v7, :cond_3

    :goto_3
    move/from16 v16, v3

    goto/16 :goto_e

    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp/j;

    instance-of v11, v8, Lp/a;

    if-eqz v11, :cond_4

    iget-object v11, v10, Lp/j;->d:Lp/k;

    iput v0, v11, Lp/k;->c0:I

    :cond_4
    iget-object v11, v10, Lp/j;->d:Lp/k;

    iget v11, v11, Lp/k;->c0:I

    if-eq v11, v7, :cond_7

    if-eq v11, v0, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v8

    check-cast v0, Lp/a;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    iget-object v7, v10, Lp/j;->d:Lp/k;

    iget v9, v7, Lp/k;->a0:I

    invoke-virtual {v0, v9}, Lp/a;->setType(I)V

    iget v9, v7, Lp/k;->b0:I

    invoke-virtual {v0, v9}, Lp/a;->setMargin(I)V

    iget-boolean v9, v7, Lp/k;->i0:Z

    invoke-virtual {v0, v9}, Lp/a;->setAllowsGoneWidget(Z)V

    iget-object v9, v7, Lp/k;->d0:[I

    if-eqz v9, :cond_6

    invoke-virtual {v0, v9}, Lp/d;->setReferencedIds([I)V

    goto :goto_4

    :cond_6
    iget-object v9, v7, Lp/k;->e0:Ljava/lang/String;

    if-eqz v9, :cond_7

    invoke-static {v0, v9}, Lp/o;->c(Lp/a;Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, v7, Lp/k;->d0:[I

    invoke-virtual {v0, v9}, Lp/d;->setReferencedIds([I)V

    :cond_7
    :goto_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lp/g;

    invoke-virtual {v7}, Lp/g;->a()V

    invoke-virtual {v10, v7}, Lp/j;->a(Lp/g;)V

    iget-object v9, v10, Lp/j;->f:Ljava/util/HashMap;

    const-string v11, "\" not found on "

    const-string v12, " Custom Attribute \""

    const-string v13, "TransitionLayout"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/c;

    move/from16 v16, v3

    const-string v3, "set"

    invoke-static {v3, v1}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_1
    sget-object v17, Lp/b;->a:[I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 v18, v9

    :try_start_2
    iget-object v9, v0, Lp/c;->a:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v17, v9
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    packed-switch v9, :pswitch_data_0

    move-object/from16 v17, v15

    goto/16 :goto_d

    :pswitch_0
    const/4 v9, 0x1

    move-object/from16 v17, v15

    :try_start_3
    new-array v15, v9, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lp/c;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v20

    invoke-virtual {v15, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_1
    move-object/from16 v17, v15

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/Object;

    iget-boolean v0, v0, Lp/c;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v20

    invoke-virtual {v15, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_2
    move-object/from16 v17, v15

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Class;

    const-class v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v0, v0, Lp/c;->d:Ljava/lang/String;

    aput-object v0, v9, v20

    invoke-virtual {v15, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_3
    move-object/from16 v17, v15

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lp/c;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v20

    invoke-virtual {v15, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_4
    move-object/from16 v17, v15

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lp/c;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v20

    invoke-virtual {v15, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_5
    move-object/from16 v17, v15

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v15, Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    aput-object v15, v9, v19

    invoke-virtual {v14, v3, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v0, v0, Lp/c;->f:I

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v15, v0, v19

    invoke-virtual {v9, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :pswitch_6
    move-object/from16 v17, v15

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/Object;

    iget v0, v0, Lp/c;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v20

    invoke-virtual {v15, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_d

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    :goto_6
    move-object/from16 v17, v15

    goto :goto_9

    :catch_5
    move-exception v0

    :goto_7
    move-object/from16 v17, v15

    goto :goto_a

    :catch_6
    move-exception v0

    :goto_8
    move-object/from16 v17, v15

    goto :goto_c

    :catch_7
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_6

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :catch_8
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_7

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :catch_9
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_8

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must have a method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    move-object/from16 v1, p0

    move/from16 v3, v16

    move-object/from16 v15, v17

    move-object/from16 v9, v18

    goto/16 :goto_5

    :cond_8
    move/from16 v16, v3

    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Lp/j;->b:Lp/m;

    iget v1, v0, Lp/m;->b:I

    if-nez v1, :cond_9

    iget v1, v0, Lp/m;->a:I

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget v0, v0, Lp/m;->c:F

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v10, Lp/j;->e:Lp/n;

    iget v1, v0, Lp/n;->a:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotation(F)V

    iget v1, v0, Lp/n;->b:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationX(F)V

    iget v1, v0, Lp/n;->c:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationY(F)V

    iget v1, v0, Lp/n;->d:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, v0, Lp/n;->e:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleY(F)V

    iget v1, v0, Lp/n;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, v0, Lp/n;->f:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotX(F)V

    :cond_a
    iget v1, v0, Lp/n;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Lp/n;->g:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_b
    iget v1, v0, Lp/n;->h:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, v0, Lp/n;->i:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v1, v0, Lp/n;->j:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v1, v0, Lp/n;->k:Z

    if-eqz v1, :cond_d

    iget v0, v0, Lp/n;->l:F

    invoke-virtual {v8, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_e

    :cond_c
    move/from16 v16, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WARNING NO CONSTRAINTS for view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp/j;

    iget-object v4, v3, Lp/j;->d:Lp/k;

    iget v6, v4, Lp/k;->c0:I

    if-eq v6, v7, :cond_13

    const/4 v8, 0x1

    if-eq v6, v8, :cond_10

    goto :goto_11

    :cond_10
    new-instance v6, Lp/a;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lp/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setId(I)V

    iget-object v8, v4, Lp/k;->d0:[I

    if-eqz v8, :cond_11

    invoke-virtual {v6, v8}, Lp/d;->setReferencedIds([I)V

    goto :goto_10

    :cond_11
    iget-object v8, v4, Lp/k;->e0:Ljava/lang/String;

    if-eqz v8, :cond_12

    invoke-static {v6, v8}, Lp/o;->c(Lp/a;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v4, Lp/k;->d0:[I

    invoke-virtual {v6, v8}, Lp/d;->setReferencedIds([I)V

    :cond_12
    :goto_10
    iget v8, v4, Lp/k;->a0:I

    invoke-virtual {v6, v8}, Lp/a;->setType(I)V

    iget v8, v4, Lp/k;->b0:I

    invoke-virtual {v6, v8}, Lp/a;->setMargin(I)V

    sget v8, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    new-instance v8, Lp/g;

    invoke-direct {v8}, Lp/g;-><init>()V

    invoke-virtual {v6}, Lp/d;->h()V

    invoke-virtual {v3, v8}, Lp/j;->a(Lp/g;)V

    invoke-virtual {v2, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    :goto_11
    iget-boolean v4, v4, Lp/k;->a:Z

    if-eqz v4, :cond_f

    new-instance v4, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setId(I)V

    sget v1, Landroidx/constraintlayout/widget/ConstraintLayout;->u:I

    new-instance v1, Lp/g;

    invoke-direct {v1}, Lp/g;-><init>()V

    invoke-virtual {v3, v1}, Lp/j;->a(Lp/g;)V

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, v1, Lp/o;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_9

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lp/g;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    iget-boolean v0, v1, Lp/o;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Lp/j;

    invoke-direct {v10}, Lp/j;-><init>()V

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lp/j;

    iget-object v11, v1, Lp/o;->a:Ljava/util/HashMap;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lp/c;

    :try_start_0
    const-string v4, "BackgroundColor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v1, Lp/c;

    invoke-direct {v1, v15, v4}, Lp/c;-><init>(Lp/c;Ljava/lang/Object;)V

    move/from16 v16, v2

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMap"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v16, v2

    const/4 v4, 0x0

    :try_start_1
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v13, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lp/c;

    invoke-direct {v2, v15, v1}, Lp/c;-><init>(Lp/c;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v16, v2

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    move-object/from16 v1, p0

    move/from16 v2, v16

    goto :goto_2

    :cond_4
    move/from16 v16, v2

    const/4 v4, 0x0

    iput-object v12, v10, Lp/j;->f:Ljava/util/HashMap;

    iput v9, v10, Lp/j;->a:I

    iget v0, v8, Lp/g;->d:I

    iget-object v1, v10, Lp/j;->d:Lp/k;

    iput v0, v1, Lp/k;->g:I

    iget v0, v8, Lp/g;->e:I

    iput v0, v1, Lp/k;->h:I

    iget v0, v8, Lp/g;->f:I

    iput v0, v1, Lp/k;->i:I

    iget v0, v8, Lp/g;->g:I

    iput v0, v1, Lp/k;->j:I

    iget v0, v8, Lp/g;->h:I

    iput v0, v1, Lp/k;->k:I

    iget v0, v8, Lp/g;->i:I

    iput v0, v1, Lp/k;->l:I

    iget v0, v8, Lp/g;->j:I

    iput v0, v1, Lp/k;->m:I

    iget v0, v8, Lp/g;->k:I

    iput v0, v1, Lp/k;->n:I

    iget v0, v8, Lp/g;->l:I

    iput v0, v1, Lp/k;->o:I

    iget v0, v8, Lp/g;->p:I

    iput v0, v1, Lp/k;->p:I

    iget v0, v8, Lp/g;->q:I

    iput v0, v1, Lp/k;->q:I

    iget v0, v8, Lp/g;->r:I

    iput v0, v1, Lp/k;->r:I

    iget v0, v8, Lp/g;->s:I

    iput v0, v1, Lp/k;->s:I

    iget v0, v8, Lp/g;->z:F

    iput v0, v1, Lp/k;->t:F

    iget v0, v8, Lp/g;->A:F

    iput v0, v1, Lp/k;->u:F

    iget-object v0, v8, Lp/g;->B:Ljava/lang/String;

    iput-object v0, v1, Lp/k;->v:Ljava/lang/String;

    iget v0, v8, Lp/g;->m:I

    iput v0, v1, Lp/k;->w:I

    iget v0, v8, Lp/g;->n:I

    iput v0, v1, Lp/k;->x:I

    iget v0, v8, Lp/g;->o:F

    iput v0, v1, Lp/k;->y:F

    iget v0, v8, Lp/g;->P:I

    iput v0, v1, Lp/k;->z:I

    iget v0, v8, Lp/g;->Q:I

    iput v0, v1, Lp/k;->A:I

    iget v0, v8, Lp/g;->R:I

    iput v0, v1, Lp/k;->B:I

    iget v0, v8, Lp/g;->c:F

    iput v0, v1, Lp/k;->f:F

    iget v0, v8, Lp/g;->a:I

    iput v0, v1, Lp/k;->d:I

    iget v0, v8, Lp/g;->b:I

    iput v0, v1, Lp/k;->e:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v1, Lp/k;->b:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v1, Lp/k;->c:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v1, Lp/k;->C:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v1, Lp/k;->D:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v1, Lp/k;->E:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v1, Lp/k;->F:I

    iget v0, v8, Lp/g;->E:F

    iput v0, v1, Lp/k;->O:F

    iget v0, v8, Lp/g;->D:F

    iput v0, v1, Lp/k;->P:F

    iget v0, v8, Lp/g;->G:I

    iput v0, v1, Lp/k;->R:I

    iget v0, v8, Lp/g;->F:I

    iput v0, v1, Lp/k;->Q:I

    iget-boolean v0, v8, Lp/g;->S:Z

    iput-boolean v0, v1, Lp/k;->g0:Z

    iget-boolean v0, v8, Lp/g;->T:Z

    iput-boolean v0, v1, Lp/k;->h0:Z

    iget v0, v8, Lp/g;->H:I

    iput v0, v1, Lp/k;->S:I

    iget v0, v8, Lp/g;->I:I

    iput v0, v1, Lp/k;->T:I

    iget v0, v8, Lp/g;->L:I

    iput v0, v1, Lp/k;->U:I

    iget v0, v8, Lp/g;->M:I

    iput v0, v1, Lp/k;->V:I

    iget v0, v8, Lp/g;->J:I

    iput v0, v1, Lp/k;->W:I

    iget v0, v8, Lp/g;->K:I

    iput v0, v1, Lp/k;->X:I

    iget v0, v8, Lp/g;->N:F

    iput v0, v1, Lp/k;->Y:F

    iget v0, v8, Lp/g;->O:F

    iput v0, v1, Lp/k;->Z:F

    iget-object v0, v8, Lp/g;->U:Ljava/lang/String;

    iput-object v0, v1, Lp/k;->f0:Ljava/lang/String;

    iget v0, v8, Lp/g;->u:I

    iput v0, v1, Lp/k;->J:I

    iget v0, v8, Lp/g;->w:I

    iput v0, v1, Lp/k;->L:I

    iget v0, v8, Lp/g;->t:I

    iput v0, v1, Lp/k;->I:I

    iget v0, v8, Lp/g;->v:I

    iput v0, v1, Lp/k;->K:I

    iget v0, v8, Lp/g;->x:I

    iput v0, v1, Lp/k;->N:I

    iget v0, v8, Lp/g;->y:I

    iput v0, v1, Lp/k;->M:I

    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, v1, Lp/k;->G:I

    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, v1, Lp/k;->H:I

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v2, v10, Lp/j;->b:Lp/m;

    iput v0, v2, Lp/m;->a:I

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, v2, Lp/m;->c:F

    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v2, v10, Lp/j;->e:Lp/n;

    iput v0, v2, Lp/n;->a:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, v2, Lp/n;->b:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, v2, Lp/n;->c:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, v2, Lp/n;->d:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, v2, Lp/n;->e:F

    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    move-result v8

    float-to-double v9, v0

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_5

    float-to-double v9, v8

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_6

    :cond_5
    iput v0, v2, Lp/n;->f:F

    iput v8, v2, Lp/n;->g:F

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v2, Lp/n;->h:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v2, Lp/n;->i:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, v2, Lp/n;->j:F

    iget-boolean v0, v2, Lp/n;->k:Z

    if-eqz v0, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, v2, Lp/n;->l:F

    :cond_7
    instance-of v0, v7, Lp/a;

    if-eqz v0, :cond_8

    check-cast v7, Lp/a;

    iget-object v0, v7, Lp/a;->j:Lo/a;

    iget-boolean v0, v0, Lo/a;->n0:Z

    iput-boolean v0, v1, Lp/k;->i0:Z

    invoke-virtual {v7}, Lp/d;->getReferencedIds()[I

    move-result-object v0

    iput-object v0, v1, Lp/k;->d0:[I

    invoke-virtual {v7}, Lp/a;->getType()I

    move-result v0

    iput v0, v1, Lp/k;->a0:I

    invoke-virtual {v7}, Lp/a;->getMargin()I

    move-result v0

    iput v0, v1, Lp/k;->b0:I

    :cond_8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-static {p1, v2}, Lp/o;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Lp/j;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lp/j;->d:Lp/k;

    iput-boolean v1, v0, Lp/k;->a:Z

    :cond_1
    iget-object v0, p0, Lp/o;->c:Ljava/util/HashMap;

    iget v1, v2, Lp/j;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
