.class Lorg/spongycastle/crypto/tls/RecordStream$1;
.super Lorg/spongycastle/util/io/SimpleOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/RecordStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/tls/RecordStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/RecordStream;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream$1;->this$0:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-direct {p0}, Lorg/spongycastle/util/io/SimpleOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/RecordStream$1;->this$0:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->access$100(Lorg/spongycastle/crypto/tls/RecordStream;)Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method
