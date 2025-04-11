.class Lorg/spongycastle/est/HttpAuth$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/est/ESTHijacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/est/HttpAuth;->applyAuth(Lorg/spongycastle/est/ESTRequestBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/est/HttpAuth;


# direct methods
.method public constructor <init>(Lorg/spongycastle/est/HttpAuth;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hijack(Lorg/spongycastle/est/ESTRequest;Lorg/spongycastle/est/Source;)Lorg/spongycastle/est/ESTResponse;
    .locals 6

    new-instance v0, Lorg/spongycastle/est/ESTResponse;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/est/ESTResponse;-><init>(Lorg/spongycastle/est/ESTRequest;Lorg/spongycastle/est/Source;)V

    invoke-virtual {v0}, Lorg/spongycastle/est/ESTResponse;->getStatusCode()I

    move-result p2

    const/16 v1, 0x191

    if-ne p2, v1, :cond_7

    const-string p2, "WWW-Authenticate"

    invoke-virtual {v0, p2}, Lorg/spongycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "digest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p0, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {p0, v0}, Lorg/spongycastle/est/HttpAuth;->access$000(Lorg/spongycastle/est/HttpAuth;Lorg/spongycastle/est/ESTResponse;)Lorg/spongycastle/est/ESTResponse;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    const-string v3, "basic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/spongycastle/est/ESTResponse;->close()V

    const-string v2, "Basic"

    invoke-virtual {v0, p2}, Lorg/spongycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/spongycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/spongycastle/est/HttpAuth;->access$100(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/spongycastle/est/HttpAuth;->access$100(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "realm"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/spongycastle/est/ESTException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Supplied realm \'"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {p0}, Lorg/spongycastle/est/HttpAuth;->access$100(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not match server realm \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "\'"

    invoke-static {p2, p0, v0}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3, v1, v3}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Lorg/spongycastle/est/ESTRequestBuilder;

    invoke-direct {v0, p1}, Lorg/spongycastle/est/ESTRequestBuilder;-><init>(Lorg/spongycastle/est/ESTRequest;)V

    invoke-virtual {v0, v3}, Lorg/spongycastle/est/ESTRequestBuilder;->withHijacker(Lorg/spongycastle/est/ESTHijacker;)Lorg/spongycastle/est/ESTRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/spongycastle/est/HttpAuth;->access$100(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/spongycastle/est/HttpAuth;->access$100(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Basic realm=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/spongycastle/est/HttpAuth;->access$100(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/spongycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/est/ESTRequestBuilder;

    :cond_3
    iget-object p2, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {p2}, Lorg/spongycastle/est/HttpAuth;->access$200(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/spongycastle/est/HttpAuth;->access$200(Lorg/spongycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object p0, p0, Lorg/spongycastle/est/HttpAuth$1;->this$0:Lorg/spongycastle/est/HttpAuth;

    invoke-static {p0}, Lorg/spongycastle/est/HttpAuth;->access$300(Lorg/spongycastle/est/HttpAuth;)[C

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Basic "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Authorization"

    invoke-virtual {v0, p2, p0}, Lorg/spongycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/est/ESTRequest;->getClient()Lorg/spongycastle/est/ESTClient;

    move-result-object p0

    invoke-virtual {v0}, Lorg/spongycastle/est/ESTRequestBuilder;->build()Lorg/spongycastle/est/ESTRequest;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/spongycastle/est/ESTClient;->doRequest(Lorg/spongycastle/est/ESTRequest;)Lorg/spongycastle/est/ESTResponse;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "User must not contain a \':\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/spongycastle/est/ESTException;

    const-string p1, "Unknown auth mode: "

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lorg/spongycastle/est/ESTException;

    const-string p1, "Status of 401 but no WWW-Authenticate header"

    invoke-direct {p0, p1}, Lorg/spongycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    return-object v0
.end method
