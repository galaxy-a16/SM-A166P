.class public Lcom/android/server/om/wallpapertheme/TemplateManager$2;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/TemplateManager;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$2;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 382
    check-cast p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/TemplateManager$2;->apply(Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;)Ljava/util/List;
    .locals 5

    .line 387
    iget-object p0, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->themes:[Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    filled-new-array {p0, p0}, [Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x0

    .line 390
    aget-object v0, p0, p1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "false"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 391
    :cond_1
    aget-object p1, p0, p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    const/4 v0, 0x1

    .line 394
    aget-object v4, p0, v0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 395
    :cond_3
    aget-object p0, p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    move-object p0, v3

    :goto_2
    if-eqz p1, :cond_6

    if-nez p0, :cond_5

    goto :goto_3

    .line 398
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    filled-new-array {p1, p0}, [Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_6
    :goto_3
    return-object v3
.end method
