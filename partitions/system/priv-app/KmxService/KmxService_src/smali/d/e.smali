.class public final synthetic Ld/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ld/e;->a:I

    iput-object p1, p0, Ld/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x3

    iget v1, p0, Ld/e;->a:I

    const/4 v2, 0x0

    iget-object p0, p0, Ld/e;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    check-cast p0, Landroid/widget/LinearLayout;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroid/widget/Button;

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {p0, v10}, Landroidx/core/view/a0;->b(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Landroidx/core/view/w;

    invoke-direct {v9, v5, v7}, Landroidx/core/view/w;-><init>(ILandroid/graphics/Rect;)V

    goto :goto_2

    :cond_4
    new-instance v9, Landroidx/core/view/w;

    invoke-direct {v9, v3, v7}, Landroidx/core/view/w;-><init>(ILandroid/graphics/Rect;)V

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    iget v10, v3, Landroid/graphics/Rect;->right:I

    sub-int v10, v4, v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/2addr v10, v4

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v2, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {v7, v10, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Lp1/l;

    invoke-direct {v3, p0}, Lp1/l;-><init>(Landroid/widget/LinearLayout;)V

    move p0, v5

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p0, v4, :cond_5

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    add-int/lit8 v7, p0, 0x1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v11, v9, Landroidx/core/view/w;->a:I

    iget-object v12, v9, Landroidx/core/view/w;->b:Landroid/graphics/Rect;

    packed-switch v11, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    iget v13, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v13

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v13

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/2addr v10, v6

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    invoke-static {v11, v2, v10, v12}, Landroidx/core/view/z;->a(IIII)Landroidx/core/view/z;

    move-result-object v2

    goto :goto_5

    :goto_4
    iget v11, v4, Landroid/graphics/Rect;->left:I

    iget v13, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v13

    iget v13, v4, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v12

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v12

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    div-int/2addr v10, v6

    invoke-static {v11, v13, v2, v10}, Landroidx/core/view/z;->a(IIII)Landroidx/core/view/z;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    iget-object v10, v3, Lp1/l;->c:Ljava/lang/Object;

    check-cast v10, Ljava/util/Queue;

    new-instance v11, Landroidx/core/view/x;

    invoke-direct {v11, p0, v2}, Landroidx/core/view/x;-><init>(Landroid/view/View;Landroidx/core/view/z;)V

    invoke-interface {v10, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    move p0, v7

    goto :goto_3

    :cond_5
    move-object v2, v3

    :goto_6
    if-eqz v2, :cond_6

    iget-object p0, v2, Lp1/l;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/fragment/app/d0;

    invoke-direct {v1, p0, v6}, Landroidx/fragment/app/d0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    iget-object p0, v2, Lp1/l;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    new-instance v3, Ld/p0;

    invoke-direct {v3, v0, v2, v1}, Ld/p0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :goto_7
    check-cast p0, Landroid/content/Context;

    sget-object v1, Ld/u;->a:Ld/q0;

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v3, :cond_12

    sget v4, Landroidx/core/os/b;->a:I

    sget-object v4, Ld/u;->e:Ll/c;

    invoke-virtual {v4}, Ll/c;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "locale"

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld/u;

    if-eqz v5, :cond_7

    check-cast v5, Ld/j0;

    iget-object v5, v5, Ld/j0;->i:Landroid/content/Context;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_8

    :cond_8
    move-object v4, v2

    :goto_8
    if-eqz v4, :cond_9

    invoke-static {v4}, Ld/t;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v4

    new-instance v5, Landroidx/core/os/j;

    new-instance v7, Landroidx/core/os/l;

    invoke-direct {v7, v4}, Landroidx/core/os/l;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, v7}, Landroidx/core/os/j;-><init>(Landroidx/core/os/l;)V

    goto :goto_9

    :cond_9
    sget-object v5, Landroidx/core/os/j;->b:Landroidx/core/os/j;

    :goto_9
    iget-object v4, v5, Landroidx/core/os/j;->a:Landroidx/core/os/k;

    check-cast v4, Landroidx/core/os/l;

    iget-object v4, v4, Landroidx/core/os/l;->a:Landroid/os/LocaleList;

    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    const-string v5, "AppLocalesStorageHelper"

    const-string v7, ""

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-interface {v9, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    :cond_a
    :goto_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    if-eq v11, v3, :cond_d

    if-ne v11, v0, :cond_b

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v10, :cond_d

    :cond_b
    if-eq v11, v0, :cond_a

    const/4 v12, 0x4

    if-ne v11, v12, :cond_c

    goto :goto_a

    :cond_c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "locales"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v0, "application_locales"

    invoke-interface {v9, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v0

    :cond_d
    if-eqz v8, :cond_e

    goto :goto_b

    :catchall_0
    move-exception p0

    goto :goto_c

    :catch_0
    :try_start_2
    const-string v0, "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_e

    :goto_b
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_e
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "Reading app Locales : Locales read from file: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file , appLocales: "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_f
    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_d

    :goto_c
    if-eqz v8, :cond_10

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_10
    throw p0

    :catch_3
    const-string v0, "Reading app Locales : Locales record file not found: androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v7}, Ld/s;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    invoke-static {v0, v2}, Ld/t;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_12
    sput-boolean v3, Ld/u;->d:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
