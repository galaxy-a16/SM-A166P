.class public Lcom/android/server/om/wallpapertheme/TemplateManager$3;
.super Ljava/lang/Object;
.source "TemplateManager.java"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/om/wallpapertheme/TemplateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$3;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;)Ljava/lang/Integer;
    .locals 2

    :try_start_0
    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;->theme:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/TemplateManager$3;->this$0:Lcom/android/server/om/wallpapertheme/TemplateManager;

    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/TemplateManager;->-$$Nest$fgetTAG(Lcom/android/server/om/wallpapertheme/TemplateManager;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/TemplateManager$3;->apply(Lcom/android/server/om/wallpapertheme/TemplateManager$UidItem;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
