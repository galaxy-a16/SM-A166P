.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/client/network/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/samsung/android/kmxservice/trustchain/client/data/Request;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/d;->a:Z

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/d;->b:Lcom/samsung/android/kmxservice/trustchain/client/data/Request;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/d;->b:Lcom/samsung/android/kmxservice/trustchain/client/data/Request;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/d;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/trustchain/client/network/d;->a:Z

    invoke-static {p0, v0, v1}, Lcom/samsung/android/kmxservice/trustchain/client/network/RestfulHelper;->a(ZLcom/samsung/android/kmxservice/trustchain/client/data/Request;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/client/data/Response;

    move-result-object p0

    return-object p0
.end method
