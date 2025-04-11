.class public final Lxa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "timeUnit"

    .line 1
    invoke-static {v0, v1}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/internal/connection/m;

    sget-object v2, Lbc/f;->h:Lbc/f;

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/connection/m;-><init>(Lbc/f;Ljava/util/concurrent/TimeUnit;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lxa/d;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->e(Landroid/content/Context;)Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    move-result-object p1

    iput-object p1, p0, Lxa/d;->a:Ljava/lang/Object;

    return-void
.end method
