.class public Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$3;
.super Ljava/lang/Object;
.source "AbstractPreconditionObserver.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAccountsUpdated - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[MCF_DS_SYS]_PreconditionObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$3;->this$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    invoke-static {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->-$$Nest$mcheckAccountUpdated(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V

    return-void
.end method
