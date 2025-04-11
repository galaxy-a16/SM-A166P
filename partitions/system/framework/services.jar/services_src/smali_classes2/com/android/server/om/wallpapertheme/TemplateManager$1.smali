.class public Lcom/android/server/om/wallpapertheme/TemplateManager$1;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/TemplateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$1;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/TemplateManager$1;->apply(Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;
    .locals 6

    iget-object v0, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->themes:[Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$1;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    iget-object v2, v2, Lcom/android/server/om/wallpapertheme/TemplateManager;->mColorTemplate:Ljava/util/HashMap;

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/TemplateManager$ColorItem;

    if-nez v1, :cond_2

    return-object v4

    :cond_2
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$1;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-static {v2}, Lcom/android/server/om/wallpapertheme/TemplateManager;->-$$Nest$fgetmThemePalette(Lcom/android/server/om/wallpapertheme/TemplateManager;)Lcom/android/server/om/wallpapertheme/ThemePalette;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    if-eqz v5, :cond_3

    iget-object v1, v1, Lcom/android/server/om/wallpapertheme/TemplateManager$ColorItem;->colorLightGray:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/android/server/om/wallpapertheme/TemplateManager$ColorItem;->colorLight:Ljava/lang/String;

    :goto_1
    invoke-static {v2, v1}, Lcom/android/server/om/wallpapertheme/TemplateManager;->-$$Nest$mgetColorFromName(Lcom/android/server/om/wallpapertheme/TemplateManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    return-object v4

    :cond_4
    const/4 v2, 0x1

    aget-object v5, v0, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    aget-object p0, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$1;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    iget-object v3, v3, Lcom/android/server/om/wallpapertheme/TemplateManager;->mColorTemplate:Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/om/wallpapertheme/TemplateManager$ColorItem;

    if-nez v0, :cond_6

    return-object v4

    :cond_6
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$1;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/TemplateManager;->-$$Nest$fgetmThemePalette(Lcom/android/server/om/wallpapertheme/TemplateManager;)Lcom/android/server/om/wallpapertheme/ThemePalette;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/om/wallpapertheme/ThemePalette;->mIsGray:Z

    if-eqz v2, :cond_7

    iget-object v0, v0, Lcom/android/server/om/wallpapertheme/TemplateManager$ColorItem;->colorDarkGray:Ljava/lang/String;

    goto :goto_3

    :cond_7
    iget-object v0, v0, Lcom/android/server/om/wallpapertheme/TemplateManager$ColorItem;->colorDark:Ljava/lang/String;

    :goto_3
    invoke-static {p0, v0}, Lcom/android/server/om/wallpapertheme/TemplateManager;->-$$Nest$mgetColorFromName(Lcom/android/server/om/wallpapertheme/TemplateManager;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_4
    if-nez p0, :cond_8

    return-object v4

    :cond_8
    iget-object v0, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->opacity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_9

    iget-object v0, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->opacity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->opacity:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/om/wallpapertheme/ThemeUtil;->adjustAlpha(FI)Ljava/lang/Integer;

    move-result-object p0

    :cond_9
    new-instance p1, Ljava/util/ArrayList;

    filled-new-array {v1, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
