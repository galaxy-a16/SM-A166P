.class public final Lr2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/d;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ls2/l;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lp2/f;

.field public final d:Lt2/d;

.field public final e:Lu2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lo2/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lr2/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lp2/f;Ls2/l;Lt2/d;Lu2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lr2/c;->c:Lp2/f;

    iput-object p3, p0, Lr2/c;->a:Ls2/l;

    iput-object p4, p0, Lr2/c;->d:Lt2/d;

    iput-object p5, p0, Lr2/c;->e:Lu2/b;

    return-void
.end method
