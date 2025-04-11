.class public Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;
.super Landroid/os/Handler;
.source "CocktailBarManagerServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;Landroid/os/Looper;)V
    .locals 0

    .line 2889
    iput-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    .line 2890
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2895
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result p1

    .line 2896
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmNextUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result v0

    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    .line 2897
    iget-object p1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmNextUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result p1

    .line 2899
    :cond_0
    invoke-static {}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdgeStartHandler userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nextUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmNextUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.cocktailbar.intent.action.EDGE_APP_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x1000020

    .line 2902
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2904
    iget-object v1, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2905
    iget-object p0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EdgeStartHandler;->this$0:Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fgetmUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;->-$$Nest$fputmNextUserId(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;I)V

    return-void
.end method
