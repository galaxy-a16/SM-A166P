.class public abstract Lec/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lec/b;

.field public static final b:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x3d

    new-array v1, v0, [Lec/b;

    new-instance v2, Lec/b;

    sget-object v3, Lec/b;->i:Lokio/ByteString;

    const-string v4, ""

    invoke-direct {v2, v4, v3}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lec/b;

    sget-object v5, Lec/b;->f:Lokio/ByteString;

    const-string v6, "GET"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v6, 0x1

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "POST"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    sget-object v5, Lec/b;->g:Lokio/ByteString;

    const-string v6, "/"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "/index.html"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    sget-object v5, Lec/b;->h:Lokio/ByteString;

    const-string v6, "http"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v6, 0x5

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "https"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    sget-object v5, Lec/b;->e:Lokio/ByteString;

    const-string v6, "200"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/4 v6, 0x7

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "204"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/16 v6, 0x8

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "206"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/16 v6, 0x9

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "304"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/16 v6, 0xa

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "400"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/16 v6, 0xb

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "404"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/16 v6, 0xc

    aput-object v2, v1, v6

    new-instance v2, Lec/b;

    const-string v6, "500"

    invoke-direct {v2, v6, v5}, Lec/b;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    const/16 v5, 0xd

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "accept-charset"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xe

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "accept-encoding"

    const-string v6, "gzip, deflate"

    invoke-direct {v2, v5, v6}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xf

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "accept-language"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "accept-ranges"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x11

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "accept"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x12

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "access-control-allow-origin"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x13

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "age"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x14

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "allow"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x15

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "authorization"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x16

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "cache-control"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x17

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "content-disposition"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x18

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "content-encoding"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x19

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "content-language"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1a

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "content-length"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1b

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "content-location"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1c

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "content-range"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1d

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "content-type"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1e

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "cookie"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1f

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "date"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x20

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "etag"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x21

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "expect"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x22

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "expires"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x23

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "from"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x24

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "host"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x25

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "if-match"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x26

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "if-modified-since"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x27

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "if-none-match"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x28

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "if-range"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x29

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "if-unmodified-since"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2a

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "last-modified"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2b

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "link"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2c

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "location"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2d

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "max-forwards"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2e

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "proxy-authenticate"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2f

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "proxy-authorization"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x30

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "range"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x31

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "referer"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x32

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "refresh"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x33

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "retry-after"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x34

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "server"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x35

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "set-cookie"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x36

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "strict-transport-security"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x37

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "transfer-encoding"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x38

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "user-agent"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x39

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "vary"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3a

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "via"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x3b

    aput-object v2, v1, v5

    new-instance v2, Lec/b;

    const-string v5, "www-authenticate"

    invoke-direct {v2, v5, v4}, Lec/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x3c

    aput-object v2, v1, v4

    sput-object v1, Lec/e;->a:[Lec/b;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    iget-object v4, v4, Lec/b;->b:Lokio/ByteString;

    invoke-virtual {v2, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v1, v3

    iget-object v4, v4, Lec/b;->b:Lokio/ByteString;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Collections.unmodifiableMap(result)"

    invoke-static {v0, v1}, Li4/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lec/e;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Lokio/ByteString;)V
    .locals 5

    const-string v0, "name"

    invoke-static {p0, v0}, Li4/f;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/16 v2, 0x41

    int-to-byte v2, v2

    const/16 v3, 0x5a

    int-to-byte v3, v3

    invoke-virtual {p0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-ge v3, v4, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
