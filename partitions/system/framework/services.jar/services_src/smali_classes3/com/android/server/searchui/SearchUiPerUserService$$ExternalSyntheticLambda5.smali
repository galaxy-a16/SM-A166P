.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/search/SearchSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;->f$0:Landroid/app/search/SearchSessionId;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;->f$0:Landroid/app/search/SearchSessionId;

    check-cast p1, Landroid/service/search/ISearchUiService;

    invoke-static {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService;->$r8$lambda$er8ejm4BG39NOX7x3MNbdJMWlo8(Landroid/app/search/SearchSessionId;Landroid/service/search/ISearchUiService;)V

    return-void
.end method
