.class final Lio/netty/channel/ChannelHandlerMask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/ChannelHandlerMask;->isSkippable(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$handlerType:Ljava/lang/Class;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$paramTypes:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    iput-object p2, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$paramTypes:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 6

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    iget-object v3, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    iget-object v4, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$paramTypes:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const-class v2, Lio/netty/channel/ChannelHandlerMask$Skip;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v2

    invoke-static {}, Lio/netty/channel/ChannelHandlerMask;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lio/netty/channel/ChannelHandlerMask;->access$000()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$handlerType:Ljava/lang/Class;

    aput-object v5, v4, v1

    iget-object p0, p0, Lio/netty/channel/ChannelHandlerMask$2;->val$methodName:Ljava/lang/String;

    aput-object p0, v4, v0

    const/4 p0, 0x2

    aput-object v2, v4, p0

    const-string p0, "Class {} missing method {}, assume we can not skip execution"

    invoke-interface {v3, p0, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lio/netty/channel/ChannelHandlerMask$2;->run()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
