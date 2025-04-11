.class public final Lt6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly7/d;
.implements Lcom/samsung/android/sdk/smp/marketing/e;
.implements Lpc/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lt6/a;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lt6/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lt6/a;->a:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lt6/a;->b:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lt6/a;-><init>(Ljava/lang/StringBuilder;)V

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lt6/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lt6/a;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->e(Landroid/content/Context;)Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;->f()Lva/f;

    move-result-object p1

    iput-object p1, p0, Lt6/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/smp/marketing/f;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lt6/a;->a:I

    .line 6
    invoke-direct {p0, p1, v0}, Lt6/a;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 7
    iput p2, p0, Lt6/a;->a:I

    iput-object p1, p0, Lt6/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lt6/a;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lt6/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static m(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Ls6/a;

    invoke-virtual {p0}, Ls6/a;->b()V

    iget p0, p0, Ls6/a;->b:I

    return p0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 5

    iget-object v0, p3, Lcom/samsung/android/sdk/smp/marketing/i;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v2, "webid"

    invoke-virtual {v0, v2, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/samsung/android/sdk/smp/marketing/f;->b:I

    const-string p0, "f"

    const-string p1, "fail to get redirection intent. webid is null"

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/sdk/smp/marketing/f;

    iget-object v3, p3, Lcom/samsung/android/sdk/smp/marketing/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    xor-int/2addr v0, v4

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p4, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p4, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p4, Lcom/samsung/android/sdk/smp/marketing/f;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/f;->e(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_4

    const-string p0, "f"

    const-string p1, "fail to get redirection intent. not launchable when adding browsable category"

    :goto_2
    invoke-static {p0, p2, p1}, Lj3/f;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_4
    iget-object p4, p3, Lcom/samsung/android/sdk/smp/marketing/i;->c:Ljava/lang/String;

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    const-string v0, "webid"

    invoke-virtual {p4, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p4

    const-string v0, "url"

    invoke-virtual {p4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/smp/marketing/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p3}, Lcom/samsung/android/sdk/smp/marketing/f;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/i;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {p4, p3}, Lt6/a;->m(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    :goto_3
    if-nez p5, :cond_6

    goto :goto_4

    :cond_6
    const-string p3, "url"

    invoke-virtual {p4, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/sdk/smp/marketing/f;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p5}, Lcom/samsung/android/sdk/smp/marketing/f;->b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lt6/a;->m(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    :goto_4
    new-instance p0, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p3, 0x14000000

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p3, "f"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "redirect : "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lc9/b;->O(Landroid/content/Context;)Lc9/b;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-enter p1

    :try_start_1
    const-string p4, "landingredirected"

    invoke-virtual {p1, p4, p3, p2}, Lc9/b;->R(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    invoke-virtual {p1}, Lc9/b;->c()V

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_7
    :goto_5
    return-object p0

    :cond_8
    const-string p0, "f"

    const-string p1, "invalid redirection url. no url query parameter in redirection url"

    invoke-static {p0, p2, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :cond_9
    sget p0, Lcom/samsung/android/sdk/smp/marketing/f;->b:I

    const-string p0, "f"

    const-string p1, "invalid redirection url. no url query parameter in redirection url"

    invoke-static {p0, p2, p1}, Lj3/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/common/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Ly7/d;
    .locals 2

    iget-object v0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast v0, Ls6/a;

    invoke-virtual {v0}, Ls6/a;->b()V

    iget-boolean v1, v0, Ls6/a;->g:Z

    if-nez v1, :cond_0

    const-string v1, "Time unit"

    invoke-static {p3, v1}, Lp9/d;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, v0, Ls6/a;->d:J

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "delay must only be called in onDisconnected."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Z)Ly7/d;
    .locals 1

    iget-object v0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast v0, Ls6/a;

    invoke-virtual {v0}, Ls6/a;->b()V

    iput-boolean p1, v0, Ls6/a;->c:Z

    return-object p0
.end method

.method public final e(Landroid/content/Intent;)V
    .locals 0

    const/high16 p0, 0x14000000

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method public final f(C)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not write description"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Could not write description"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 5

    if-eqz p5, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lf9/c;->G(Landroid/content/Context;)Lf9/c;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string p5, "aid"

    const/4 v0, 0x0

    invoke-virtual {p0, p5, v0}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "f"

    if-eqz v1, :cond_1

    sget p0, Lcom/samsung/android/sdk/smp/marketing/f;->b:I

    const-string p0, "fail to put click feedback path. aid is null"

    invoke-static {v2, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "v3"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "feedback"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v3, "aid"

    invoke-virtual {v1, v3, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p5, "mid"

    invoke-virtual {v1, p5, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lfc/e;->o(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p5

    if-nez p5, :cond_2

    const-string p5, "e"

    const-string v3, "fail to get sdk version(int)"

    invoke-static {p5, v3}, Lj3/f;->y(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, -0x1

    goto :goto_0

    :cond_2
    const-string v3, "com.samsung.android.sdk.smp.sdkvint"

    invoke-virtual {p5, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p5

    :goto_0
    sget v3, Lcom/samsung/android/sdk/smp/marketing/f;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdk version of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x2e15a8

    if-ge p5, v3, :cond_4

    monitor-enter p0

    :try_start_1
    const-string p5, "webid"

    invoke-virtual {p0, p5, v0}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "fail to put click feedback path. webid is null"

    invoke-static {v2, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "webid"

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    invoke-virtual {p0}, Lf9/c;->L()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "fail to put click feedback path. smpid is null"

    invoke-static {v2, p0}, Lj3/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "smpid"

    :goto_1
    invoke-virtual {v1, p0, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "put click feedback path extra : "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v2, p5}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "com.samsung.android.sdk.smp.EXTRA_FEEDBACK_PATH"

    invoke-virtual {p3, p5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.sdk.smp.EXTRA_SENDER_PACKAGE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.sdk.smp.EXTRA_MID"

    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.samsung.android.sdk.smp.LINK_TYPE"

    invoke-virtual {p3, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i(Lpc/c;)Lt6/a;
    .locals 0

    invoke-interface {p1, p0}, Lpc/c;->describeTo(Lpc/a;)V

    return-object p0
.end method

.method public final j(Ljava/lang/Object;)Lt6/a;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lt6/a;->n(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    goto/16 :goto_4

    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lt6/a;->n(C)V

    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    goto/16 :goto_4

    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    const/16 v1, 0x3c

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    invoke-static {p1}, Lt6/a;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt6/a;->g(Ljava/lang/String;)V

    const-string p1, "s>"

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    invoke-static {p1}, Lt6/a;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt6/a;->g(Ljava/lang/String;)V

    const-string p1, "L>"

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    invoke-static {p1}, Lt6/a;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt6/a;->g(Ljava/lang/String;)V

    const-string p1, "F>"

    :goto_1
    invoke-virtual {p0, p1}, Lt6/a;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "["

    invoke-virtual {p0, v0}, Lt6/a;->g(Ljava/lang/String;)V

    move v0, v2

    move v1, v0

    :goto_2
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_7

    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    const-string v1, ", "

    invoke-virtual {p0, v1}, Lt6/a;->g(Ljava/lang/String;)V

    :cond_8
    new-instance v1, Lcom/google/android/datatransport/runtime/dagger/internal/c;

    add-int/lit8 v3, v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/datatransport/runtime/dagger/internal/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lt6/a;->i(Lpc/c;)Lt6/a;

    move v0, v3

    move v1, v4

    goto :goto_2

    :cond_9
    const-string p1, "]"

    invoke-virtual {p0, p1}, Lt6/a;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not an array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p0, v1}, Lt6/a;->f(C)V

    invoke-static {p1}, Lt6/a;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt6/a;->g(Ljava/lang/String;)V

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lt6/a;->f(C)V

    :goto_4
    return-object p0
.end method

.method public final l(Lja/a;)[B
    .locals 1

    :try_start_0
    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Lva/f;

    iget v0, p1, Lja/a;->a:I

    iget p1, p1, Lja/a;->b:I

    invoke-virtual {p0, v0, p1}, Lva/f;->i(II)[B

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    const-string p1, "Failed to get bytes"

    invoke-direct {p0, p1}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    const-string v0, "Failed to get bytes."

    invoke-direct {p1, v0}, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/samsung/security/fabric/chain/core/exception/runtime/repository/FabricChainMerkleTreeRepositoryException;

    throw p0
.end method

.method public final n(C)V
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x22

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lt6/a;->f(C)V

    goto :goto_1

    :cond_0
    const-string p1, "\\\""

    goto :goto_0

    :cond_1
    const-string p1, "\\r"

    goto :goto_0

    :cond_2
    const-string p1, "\\n"

    goto :goto_0

    :cond_3
    const-string p1, "\\t"

    :goto_0
    invoke-virtual {p0, p1}, Lt6/a;->g(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lt6/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lt6/a;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
